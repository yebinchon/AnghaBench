#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct page {TYPE_1__* mapping; } ;
struct inode {int i_state; } ;
struct extent_state {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct btrfs_ordered_inode_tree {int /*<<< orphan*/  lock; } ;
struct btrfs_ordered_extent {scalar_t__ file_offset; scalar_t__ len; scalar_t__ truncated_len; int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {struct btrfs_ordered_inode_tree ordered_tree; struct extent_io_tree io_tree; } ;
struct TYPE_4__ {struct inode* host; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_ORDERED_TRUNCATED ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int EXTENT_DEFRAG ; 
 int EXTENT_DELALLOC ; 
 int EXTENT_DELALLOC_NEW ; 
 int EXTENT_DO_ACCOUNTING ; 
 int EXTENT_LOCKED ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int I_FREEING ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct inode*,struct btrfs_ordered_extent**,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_ordered_extent*) ; 
 struct btrfs_ordered_extent* FUNC9 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_ordered_extent*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_io_tree*,scalar_t__,scalar_t__,int,int,int,struct extent_state**) ; 
 int /*<<< orphan*/  FUNC14 (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 

__attribute__((used)) static void FUNC23(struct page *page, unsigned int offset,
				 unsigned int length)
{
	struct inode *inode = page->mapping->host;
	struct extent_io_tree *tree;
	struct btrfs_ordered_extent *ordered;
	struct extent_state *cached_state = NULL;
	u64 page_start = FUNC16(page);
	u64 page_end = page_start + PAGE_SIZE - 1;
	u64 start;
	u64 end;
	int inode_evicting = inode->i_state & I_FREEING;

	/*
	 * we have the page locked, so new writeback can't start,
	 * and the dirty bit won't be cleared while we are here.
	 *
	 * Wait for IO on this page so that we can safely clear
	 * the PagePrivate2 bit and do ordered accounting
	 */
	FUNC22(page);

	tree = &FUNC0(inode)->io_tree;
	if (offset) {
		FUNC12(page, GFP_NOFS);
		return;
	}

	if (!inode_evicting)
		FUNC14(tree, page_start, page_end, &cached_state);
again:
	start = page_start;
	ordered = FUNC9(FUNC0(inode), start,
					page_end - start + 1);
	if (ordered) {
		end = FUNC15(page_end, ordered->file_offset + ordered->len - 1);
		/*
		 * IO on this page will never be started, so we need
		 * to account for any ordered extents now
		 */
		if (!inode_evicting)
			FUNC13(tree, start, end,
					 EXTENT_DELALLOC | EXTENT_DELALLOC_NEW |
					 EXTENT_LOCKED | EXTENT_DO_ACCOUNTING |
					 EXTENT_DEFRAG, 1, 0, &cached_state);
		/*
		 * whoever cleared the private bit is responsible
		 * for the finish_ordered_io
		 */
		if (FUNC5(page)) {
			struct btrfs_ordered_inode_tree *tree;
			u64 new_len;

			tree = &FUNC0(inode)->ordered_tree;

			FUNC20(&tree->lock);
			FUNC18(BTRFS_ORDERED_TRUNCATED, &ordered->flags);
			new_len = start - ordered->file_offset;
			if (new_len < ordered->truncated_len)
				ordered->truncated_len = new_len;
			FUNC21(&tree->lock);

			if (FUNC7(inode, &ordered,
							   start,
							   end - start + 1, 1))
				FUNC8(ordered);
		}
		FUNC10(ordered);
		if (!inode_evicting) {
			cached_state = NULL;
			FUNC14(tree, start, end,
					 &cached_state);
		}

		start = end + 1;
		if (start < page_end)
			goto again;
	}

	/*
	 * Qgroup reserved space handler
	 * Page here will be either
	 * 1) Already written to disk
	 *    In this case, its reserved space is released from data rsv map
	 *    and will be freed by delayed_ref handler finally.
	 *    So even we call qgroup_free_data(), it won't decrease reserved
	 *    space.
	 * 2) Not written to disk
	 *    This means the reserved space should be freed here. However,
	 *    if a truncate invalidates the page (by clearing PageDirty)
	 *    and the page is accounted for while allocating extent
	 *    in btrfs_check_data_free_space() we let delayed_ref to
	 *    free the entire extent.
	 */
	if (FUNC3(page))
		FUNC11(inode, NULL, page_start, PAGE_SIZE);
	if (!inode_evicting) {
		FUNC13(tree, page_start, page_end, EXTENT_LOCKED |
				 EXTENT_DELALLOC | EXTENT_DELALLOC_NEW |
				 EXTENT_DO_ACCOUNTING | EXTENT_DEFRAG, 1, 1,
				 &cached_state);

		FUNC6(page, GFP_NOFS);
	}

	FUNC1(page);
	if (FUNC4(page)) {
		FUNC2(page);
		FUNC19(page, 0);
		FUNC17(page);
	}
}