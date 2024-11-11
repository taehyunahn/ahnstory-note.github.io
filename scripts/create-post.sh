#!/bin/bash

# 오늘 날짜 가져오기
DATE=$(date +%Y-%m-%d)

# 제목 입력받기
echo "포스트 제목을 입력하세요: "
read TITLE

# 파일명 생성 (공백은 하이픈으로 변환)
FILENAME="_posts/$DATE-${TITLE// /-}.md"

# 기본 front matter 및 템플릿 생성
cat > "$FILENAME" << EOF
---
layout: single
title: "$TITLE"
date: $DATE
categories: 
tags: 
---

# $TITLE

## 소개
여기에 포스트의 개요나 소개 내용을 작성하세요.

## 주요 내용
1. **첫 번째 포인트**: 내용을 상세히 작성하세요.
2. **두 번째 포인트**: 내용을 추가하고 예시를 포함해 보세요.
3. **세 번째 포인트**: 관련된 링크나 참고 자료도 추가할 수 있습니다.

## 요약 및 마무리
포스트의 내용을 요약하고, 독자가 배워갈 수 있는 포인트를 간단히 정리하세요.

EOF

echo "포스트가 생성되었습니다: $FILENAME"
