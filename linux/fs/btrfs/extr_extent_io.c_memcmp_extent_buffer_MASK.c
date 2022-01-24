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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,char*,size_t) ; 
 size_t FUNC2 (unsigned long,scalar_t__) ; 
 size_t FUNC3 (size_t) ; 
 char* FUNC4 (struct page*) ; 

int FUNC5(const struct extent_buffer *eb, const void *ptrv,
			 unsigned long start, unsigned long len)
{
	size_t cur;
	size_t offset;
	struct page *page;
	char *kaddr;
	char *ptr = (char *)ptrv;
	size_t start_offset = FUNC3(eb->start);
	unsigned long i = (start_offset + start) >> PAGE_SHIFT;
	int ret = 0;

	FUNC0(start > eb->len);
	FUNC0(start + len > eb->start + eb->len);

	offset = FUNC3(start_offset + start);

	while (len > 0) {
		page = eb->pages[i];

		cur = FUNC2(len, (PAGE_SIZE - offset));

		kaddr = FUNC4(page);
		ret = FUNC1(ptr, kaddr + offset, cur);
		if (ret)
			break;

		ptr += cur;
		len -= cur;
		offset = 0;
		i++;
	}
	return ret;
}