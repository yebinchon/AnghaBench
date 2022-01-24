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
struct writeback_control {scalar_t__ nr_to_write; scalar_t__ sync_mode; } ;
struct page {struct address_space* mapping; int /*<<< orphan*/  index; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ WB_SYNC_NONE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int FUNC6 (struct address_space*,struct writeback_control*,struct page*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct address_space*,scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int,struct page**) ; 
 int FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 

__attribute__((used)) static int FUNC14(struct address_space *mapping,
				 struct writeback_control *wbc,
				 pgoff_t index, pgoff_t end, pgoff_t *_next)
{
	struct page *page;
	int ret, n;

	FUNC4(",,%lx,%lx,", index, end);

	do {
		n = FUNC9(mapping, &index, end,
					PAGECACHE_TAG_DIRTY, 1, &page);
		if (!n)
			break;

		FUNC3("wback %lx", page->index);

		/*
		 * at this point we hold neither the i_pages lock nor the
		 * page lock: the page may be truncated or invalidated
		 * (changing page->mapping to NULL), or even swizzled
		 * back from swapper_space to tmpfs file mapping
		 */
		ret = FUNC10(page);
		if (ret < 0) {
			FUNC11(page);
			FUNC5(" = %d", ret);
			return ret;
		}

		if (page->mapping != mapping || !FUNC1(page)) {
			FUNC12(page);
			FUNC11(page);
			continue;
		}

		if (FUNC2(page)) {
			FUNC12(page);
			if (wbc->sync_mode != WB_SYNC_NONE)
				FUNC13(page);
			FUNC11(page);
			continue;
		}

		if (!FUNC7(page))
			FUNC0();
		ret = FUNC6(mapping, wbc, page, end);
		FUNC11(page);
		if (ret < 0) {
			FUNC5(" = %d", ret);
			return ret;
		}

		wbc->nr_to_write -= ret;

		FUNC8();
	} while (index < end && wbc->nr_to_write > 0);

	*_next = index;
	FUNC5(" = 0 [%lx]", *_next);
	return 0;
}