#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u64 ;
struct page {int dummy; } ;
struct extent_buffer {scalar_t__ len; size_t start; struct page** pages; } ;

/* Variables and functions */
 size_t PAGE_SHIFT ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (unsigned long,unsigned long) ; 
 size_t FUNC3 (size_t) ; 
 char* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*,char*,unsigned long,size_t) ; 

void FUNC6(struct extent_buffer *dst, struct extent_buffer *src,
			unsigned long dst_offset, unsigned long src_offset,
			unsigned long len)
{
	u64 dst_len = dst->len;
	size_t cur;
	size_t offset;
	struct page *page;
	char *kaddr;
	size_t start_offset = FUNC3(dst->start);
	unsigned long i = (start_offset + dst_offset) >> PAGE_SHIFT;

	FUNC1(src->len != dst_len);

	offset = FUNC3(start_offset + dst_offset);

	while (len > 0) {
		page = dst->pages[i];
		FUNC1(!FUNC0(page));

		cur = FUNC2(len, (unsigned long)(PAGE_SIZE - offset));

		kaddr = FUNC4(page);
		FUNC5(src, kaddr + offset, src_offset, cur);

		src_offset += cur;
		len -= cur;
		offset = 0;
		i++;
	}
}