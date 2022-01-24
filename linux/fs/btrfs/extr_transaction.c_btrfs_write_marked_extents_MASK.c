#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct extent_state {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct btrfs_fs_info {TYPE_2__* btree_inode; } ;
struct address_space {int dummy; } ;
struct TYPE_4__ {struct address_space* i_mapping; } ;
struct TYPE_3__ {int /*<<< orphan*/  sync_writers; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EXTENT_NEED_WAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct extent_io_tree*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,struct extent_state**) ; 
 int FUNC5 (struct address_space*,scalar_t__,scalar_t__) ; 
 int FUNC6 (struct address_space*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_io_tree*,scalar_t__,scalar_t__*,scalar_t__*,int,struct extent_state**) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_state*) ; 

int FUNC9(struct btrfs_fs_info *fs_info,
			       struct extent_io_tree *dirty_pages, int mark)
{
	int err = 0;
	int werr = 0;
	struct address_space *mapping = fs_info->btree_inode->i_mapping;
	struct extent_state *cached_state = NULL;
	u64 start = 0;
	u64 end;

	FUNC2(&FUNC0(fs_info->btree_inode)->sync_writers);
	while (!FUNC7(dirty_pages, start, &start, &end,
				      mark, &cached_state)) {
		bool wait_writeback = false;

		err = FUNC4(dirty_pages, start, end,
					 EXTENT_NEED_WAIT,
					 mark, &cached_state);
		/*
		 * convert_extent_bit can return -ENOMEM, which is most of the
		 * time a temporary error. So when it happens, ignore the error
		 * and wait for writeback of this range to finish - because we
		 * failed to set the bit EXTENT_NEED_WAIT for the range, a call
		 * to __btrfs_wait_marked_extents() would not know that
		 * writeback for this range started and therefore wouldn't
		 * wait for it to finish - we don't want to commit a
		 * superblock that points to btree nodes/leafs for which
		 * writeback hasn't finished yet (and without errors).
		 * We cleanup any entries left in the io tree when committing
		 * the transaction (through extent_io_tree_release()).
		 */
		if (err == -ENOMEM) {
			err = 0;
			wait_writeback = true;
		}
		if (!err)
			err = FUNC6(mapping, start, end);
		if (err)
			werr = err;
		else if (wait_writeback)
			werr = FUNC5(mapping, start, end);
		FUNC8(cached_state);
		cached_state = NULL;
		FUNC3();
		start = end + 1;
	}
	FUNC1(&FUNC0(fs_info->btree_inode)->sync_writers);
	return werr;
}