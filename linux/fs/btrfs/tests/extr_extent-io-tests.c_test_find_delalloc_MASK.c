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
typedef  int u64 ;
typedef  int u32 ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct extent_io_tree {int dummy; } ;
struct TYPE_2__ {struct extent_io_tree io_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int BTRFS_MAX_EXTENT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IO_TREE_SELFTEST ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int PROCESS_RELEASE ; 
 int PROCESS_TEST_LOCKED ; 
 int PROCESS_UNLOCK ; 
 int SZ_1M ; 
 int SZ_64M ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  TEST_ALLOC_INODE ; 
 struct inode* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct extent_io_tree*,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct extent_io_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct page* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct inode*,struct page*,int*,int*) ; 
 struct page* FUNC8 (int /*<<< orphan*/ ,int) ; 
 struct page* FUNC9 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 scalar_t__ FUNC13 (struct inode*,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_io_tree*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct extent_io_tree*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 

__attribute__((used)) static int FUNC21(u32 sectorsize)
{
	struct inode *inode;
	struct extent_io_tree *tmp;
	struct page *page;
	struct page *locked_page = NULL;
	unsigned long index = 0;
	/* In this test we need at least 2 file extents at its maximum size */
	u64 max_bytes = BTRFS_MAX_EXTENT_SIZE;
	u64 total_dirty = 2 * max_bytes;
	u64 start, end, test_start;
	bool found;
	int ret = -EINVAL;

	FUNC17("running find delalloc tests");

	inode = FUNC3();
	if (!inode) {
		FUNC18(TEST_ALLOC_INODE);
		return -ENOMEM;
	}
	tmp = &FUNC0(inode)->io_tree;

	/*
	 * Passing NULL as we don't have fs_info but tracepoints are not used
	 * at this point
	 */
	FUNC5(NULL, tmp, IO_TREE_SELFTEST, NULL);

	/*
	 * First go through and create and mark all of our pages dirty, we pin
	 * everything to make sure our pages don't get evicted and screw up our
	 * test.
	 */
	for (index = 0; index < (total_dirty >> PAGE_SHIFT); index++) {
		page = FUNC9(inode->i_mapping, index, GFP_KERNEL);
		if (!page) {
			FUNC16("failed to allocate test page");
			ret = -ENOMEM;
			goto out;
		}
		FUNC2(page);
		if (index) {
			FUNC20(page);
		} else {
			FUNC10(page);
			locked_page = page;
		}
	}

	/* Test this scenario
	 * |--- delalloc ---|
	 * |---  search  ---|
	 */
	FUNC15(tmp, 0, sectorsize - 1, 0, NULL);
	start = 0;
	end = 0;
	found = FUNC7(inode, locked_page, &start,
					 &end);
	if (!found) {
		FUNC16("should have found at least one delalloc");
		goto out_bits;
	}
	if (start != 0 || end != (sectorsize - 1)) {
		FUNC16("expected start 0 end %u, got start %llu end %llu",
			sectorsize - 1, start, end);
		goto out_bits;
	}
	FUNC19(tmp, start, end);
	FUNC20(locked_page);
	FUNC14(locked_page);

	/*
	 * Test this scenario
	 *
	 * |--- delalloc ---|
	 *           |--- search ---|
	 */
	test_start = SZ_64M;
	locked_page = FUNC8(inode->i_mapping,
				     test_start >> PAGE_SHIFT);
	if (!locked_page) {
		FUNC16("couldn't find the locked page");
		goto out_bits;
	}
	FUNC15(tmp, sectorsize, max_bytes - 1, 0, NULL);
	start = test_start;
	end = 0;
	found = FUNC7(inode, locked_page, &start,
					 &end);
	if (!found) {
		FUNC16("couldn't find delalloc in our range");
		goto out_bits;
	}
	if (start != test_start || end != max_bytes - 1) {
		FUNC16("expected start %llu end %llu, got start %llu, end %llu",
				test_start, max_bytes - 1, start, end);
		goto out_bits;
	}
	if (FUNC13(inode, start, end,
			       PROCESS_TEST_LOCKED | PROCESS_UNLOCK)) {
		FUNC16("there were unlocked pages in the range");
		goto out_bits;
	}
	FUNC19(tmp, start, end);
	/* locked_page was unlocked above */
	FUNC14(locked_page);

	/*
	 * Test this scenario
	 * |--- delalloc ---|
	 *                    |--- search ---|
	 */
	test_start = max_bytes + sectorsize;
	locked_page = FUNC8(inode->i_mapping, test_start >>
				     PAGE_SHIFT);
	if (!locked_page) {
		FUNC16("couldn't find the locked page");
		goto out_bits;
	}
	start = test_start;
	end = 0;
	found = FUNC7(inode, locked_page, &start,
					 &end);
	if (found) {
		FUNC16("found range when we shouldn't have");
		goto out_bits;
	}
	if (end != (u64)-1) {
		FUNC16("did not return the proper end offset");
		goto out_bits;
	}

	/*
	 * Test this scenario
	 * [------- delalloc -------|
	 * [max_bytes]|-- search--|
	 *
	 * We are re-using our test_start from above since it works out well.
	 */
	FUNC15(tmp, max_bytes, total_dirty - 1, 0, NULL);
	start = test_start;
	end = 0;
	found = FUNC7(inode, locked_page, &start,
					 &end);
	if (!found) {
		FUNC16("didn't find our range");
		goto out_bits;
	}
	if (start != test_start || end != total_dirty - 1) {
		FUNC16("expected start %llu end %llu, got start %llu end %llu",
			 test_start, total_dirty - 1, start, end);
		goto out_bits;
	}
	if (FUNC13(inode, start, end,
			       PROCESS_TEST_LOCKED | PROCESS_UNLOCK)) {
		FUNC16("pages in range were not all locked");
		goto out_bits;
	}
	FUNC19(tmp, start, end);

	/*
	 * Now to test where we run into a page that is no longer dirty in the
	 * range we want to find.
	 */
	page = FUNC6(inode->i_mapping,
			     (max_bytes + SZ_1M) >> PAGE_SHIFT);
	if (!page) {
		FUNC16("couldn't find our page");
		goto out_bits;
	}
	FUNC1(page);
	FUNC14(page);

	/* We unlocked it in the previous test */
	FUNC12(locked_page);
	start = test_start;
	end = 0;
	/*
	 * Currently if we fail to find dirty pages in the delalloc range we
	 * will adjust max_bytes down to PAGE_SIZE and then re-search.  If
	 * this changes at any point in the future we will need to fix this
	 * tests expected behavior.
	 */
	found = FUNC7(inode, locked_page, &start,
					 &end);
	if (!found) {
		FUNC16("didn't find our range");
		goto out_bits;
	}
	if (start != test_start && end != test_start + PAGE_SIZE - 1) {
		FUNC16("expected start %llu end %llu, got start %llu end %llu",
			 test_start, test_start + PAGE_SIZE - 1, start, end);
		goto out_bits;
	}
	if (FUNC13(inode, start, end, PROCESS_TEST_LOCKED |
			       PROCESS_UNLOCK)) {
		FUNC16("pages in range were not all locked");
		goto out_bits;
	}
	ret = 0;
out_bits:
	FUNC4(tmp, 0, total_dirty - 1, (unsigned)-1);
out:
	if (locked_page)
		FUNC14(locked_page);
	FUNC13(inode, 0, total_dirty - 1,
			   PROCESS_UNLOCK | PROCESS_RELEASE);
	FUNC11(inode);
	return ret;
}