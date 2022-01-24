#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {TYPE_1__* mapping; } ;
struct extent_buffer {int /*<<< orphan*/  refs; struct page** pages; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int FUNC8 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct extent_buffer *eb)
{
	int i;
	int num_pages;
	struct page *page;

	num_pages = FUNC8(eb);

	for (i = 0; i < num_pages; i++) {
		page = eb->pages[i];
		if (!FUNC1(page))
			continue;

		FUNC7(page);
		FUNC3(!FUNC2(page));

		FUNC6(page);
		FUNC11(&page->mapping->i_pages);
		if (!FUNC1(page))
			FUNC4(&page->mapping->i_pages,
					FUNC9(page), PAGECACHE_TAG_DIRTY);
		FUNC12(&page->mapping->i_pages);
		FUNC0(page);
		FUNC10(page);
	}
	FUNC3(FUNC5(&eb->refs) == 0);
}