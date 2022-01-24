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
struct extent_buffer {struct page** pages; int /*<<< orphan*/  bflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  EXTENT_BUFFER_UPTODATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct extent_buffer*) ; 

void FUNC3(struct extent_buffer *eb)
{
	int i;
	struct page *page;
	int num_pages;

	FUNC1(EXTENT_BUFFER_UPTODATE, &eb->bflags);
	num_pages = FUNC2(eb);
	for (i = 0; i < num_pages; i++) {
		page = eb->pages[i];
		if (page)
			FUNC0(page);
	}
}