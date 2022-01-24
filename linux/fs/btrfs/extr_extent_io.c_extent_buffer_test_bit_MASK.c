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
typedef  unsigned long u8 ;
struct page {int dummy; } ;
struct extent_buffer {struct page** pages; } ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*,unsigned long,unsigned long,unsigned long*,size_t*) ; 
 unsigned long* FUNC3 (struct page*) ; 

int FUNC4(struct extent_buffer *eb, unsigned long start,
			   unsigned long nr)
{
	u8 *kaddr;
	struct page *page;
	unsigned long i;
	size_t offset;

	FUNC2(eb, start, nr, &i, &offset);
	page = eb->pages[i];
	FUNC1(!FUNC0(page));
	kaddr = FUNC3(page);
	return 1U & (kaddr[offset] >> (nr & (BITS_PER_BYTE - 1)));
}