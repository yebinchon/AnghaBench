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
struct page {unsigned long private; TYPE_1__* mapping; } ;
struct extent_buffer {int /*<<< orphan*/  bflags; struct page** pages; } ;
struct TYPE_2__ {int /*<<< orphan*/  private_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  EXTENT_BUFFER_DIRTY ; 
 int /*<<< orphan*/  EXTENT_BUFFER_UNMAPPED ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*) ; 
 int FUNC6 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct extent_buffer *eb)
{
	int i;
	int num_pages;
	int mapped = !FUNC11(EXTENT_BUFFER_UNMAPPED, &eb->bflags);

	FUNC0(FUNC5(eb));

	num_pages = FUNC6(eb);
	for (i = 0; i < num_pages; i++) {
		struct page *page = eb->pages[i];

		if (!page)
			continue;
		if (mapped)
			FUNC9(&page->mapping->private_lock);
		/*
		 * We do this since we'll remove the pages after we've
		 * removed the eb from the radix tree, so we could race
		 * and have this page now attached to the new eb.  So
		 * only clear page_private if it's still connected to
		 * this eb.
		 */
		if (FUNC3(page) &&
		    page->private == (unsigned long)eb) {
			FUNC0(FUNC11(EXTENT_BUFFER_DIRTY, &eb->bflags));
			FUNC0(FUNC2(page));
			FUNC0(FUNC4(page));
			/*
			 * We need to make sure we haven't be attached
			 * to a new eb.
			 */
			FUNC1(page);
			FUNC8(page, 0);
			/* One for the page private */
			FUNC7(page);
		}

		if (mapped)
			FUNC10(&page->mapping->private_lock);

		/* One for when we allocated the page */
		FUNC7(page);
	}
}