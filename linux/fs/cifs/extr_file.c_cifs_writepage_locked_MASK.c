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
struct writeback_control {scalar_t__ sync_mode; } ;
struct page {int /*<<< orphan*/  mapping; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ WB_SYNC_ALL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 unsigned int FUNC8 () ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct writeback_control*,struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 

__attribute__((used)) static int
FUNC14(struct page *page, struct writeback_control *wbc)
{
	int rc;
	unsigned int xid;

	xid = FUNC8();
/* BB add check for wbc flags */
	FUNC7(page);
	if (!FUNC0(page))
		FUNC3(FYI, "ppw - page not up to date\n");

	/*
	 * Set the "writeback" flag, and clear "dirty" in the radix tree.
	 *
	 * A writepage() implementation always needs to do either this,
	 * or re-dirty the page with "redirty_page_for_writepage()" in
	 * the case of a failure.
	 *
	 * Just unlocking the page will cause the radix tree tag-bits
	 * to fail to update with the state of the page correctly.
	 */
	FUNC13(page);
retry_write:
	rc = FUNC4(page, 0, PAGE_SIZE);
	if (FUNC9(rc)) {
		if (wbc->sync_mode == WB_SYNC_ALL && rc == -EAGAIN)
			goto retry_write;
		FUNC12(wbc, page);
	} else if (rc != 0) {
		FUNC1(page);
		FUNC10(page->mapping, rc);
	} else {
		FUNC2(page);
	}
	FUNC5(page);
	FUNC11(page);
	FUNC6(xid);
	return rc;
}