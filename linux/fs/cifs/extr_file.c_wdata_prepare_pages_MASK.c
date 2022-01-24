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
struct writeback_control {scalar_t__ sync_mode; int /*<<< orphan*/  range_cyclic; } ;
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct cifs_writedata {struct page** pages; } ;
struct address_space {int /*<<< orphan*/  host; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ WB_SYNC_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 

__attribute__((used)) static unsigned int
FUNC12(struct cifs_writedata *wdata, unsigned int found_pages,
		    struct address_space *mapping,
		    struct writeback_control *wbc,
		    pgoff_t end, pgoff_t *index, pgoff_t *next, bool *done)
{
	unsigned int nr_pages = 0, i;
	struct page *page;

	for (i = 0; i < found_pages; i++) {
		page = wdata->pages[i];
		/*
		 * At this point we hold neither the i_pages lock nor the
		 * page lock: the page may be truncated or invalidated
		 * (changing page->mapping to NULL), or even swizzled
		 * back from swapper_space to tmpfs file mapping
		 */

		if (nr_pages == 0)
			FUNC4(page);
		else if (!FUNC8(page))
			break;

		if (FUNC9(page->mapping != mapping)) {
			FUNC10(page);
			break;
		}

		if (!wbc->range_cyclic && page->index > end) {
			*done = true;
			FUNC10(page);
			break;
		}

		if (*next && (page->index != *next)) {
			/* Not next consecutive page */
			FUNC10(page);
			break;
		}

		if (wbc->sync_mode != WB_SYNC_NONE)
			FUNC11(page);

		if (FUNC0(page) ||
				!FUNC1(page)) {
			FUNC10(page);
			break;
		}

		/*
		 * This actually clears the dirty bit in the radix tree.
		 * See cifs_writepage() for more commentary.
		 */
		FUNC7(page);
		if (FUNC5(page) >= FUNC3(mapping->host)) {
			*done = true;
			FUNC10(page);
			FUNC2(page);
			break;
		}

		wdata->pages[i] = page;
		*next = page->index + 1;
		++nr_pages;
	}

	/* reset index to refind any pages skipped */
	if (nr_pages == 0)
		*index = wdata->pages[0]->index + 1;

	/* put any pages we aren't going to use */
	for (i = nr_pages; i < found_pages; i++) {
		FUNC6(wdata->pages[i]);
		wdata->pages[i] = NULL;
	}

	return nr_pages;
}