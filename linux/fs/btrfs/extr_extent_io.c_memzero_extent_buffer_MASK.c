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
struct page {int dummy; } ;
struct extent_buffer {size_t start; unsigned long len; struct page** pages; } ;

/* Variables and functions */
 size_t PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC3 (unsigned long,scalar_t__) ; 
 size_t FUNC4 (size_t) ; 
 char* FUNC5 (struct page*) ; 

void FUNC6(struct extent_buffer *eb, unsigned long start,
		unsigned long len)
{
	size_t cur;
	size_t offset;
	struct page *page;
	char *kaddr;
	size_t start_offset = FUNC4(eb->start);
	unsigned long i = (start_offset + start) >> PAGE_SHIFT;

	FUNC1(start > eb->len);
	FUNC1(start + len > eb->start + eb->len);

	offset = FUNC4(start_offset + start);

	while (len > 0) {
		page = eb->pages[i];
		FUNC1(!FUNC0(page));

		cur = FUNC3(len, PAGE_SIZE - offset);
		kaddr = FUNC5(page);
		FUNC2(kaddr + offset, 0, cur);

		len -= cur;
		offset = 0;
		i++;
	}
}