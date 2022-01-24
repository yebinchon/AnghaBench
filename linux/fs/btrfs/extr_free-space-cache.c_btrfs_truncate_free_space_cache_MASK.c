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
struct inode {int dummy; } ;
struct btrfs_trans_handle {TYPE_1__* transaction; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_block_group_cache {int /*<<< orphan*/  lock; int /*<<< orphan*/  disk_cache_state; int /*<<< orphan*/  io_list; } ;
struct TYPE_5__ {struct btrfs_root* root; } ;
struct TYPE_4__ {int /*<<< orphan*/  cache_write_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_DC_CLEAR ; 
 int /*<<< orphan*/  BTRFS_EXTENT_DATA_KEY ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_trans_handle*,int) ; 
 struct btrfs_path* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_block_group_cache*) ; 
 int FUNC6 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC16(struct btrfs_trans_handle *trans,
				    struct btrfs_block_group_cache *block_group,
				    struct inode *inode)
{
	struct btrfs_root *root = FUNC0(inode)->root;
	int ret = 0;
	bool locked = false;

	if (block_group) {
		struct btrfs_path *path = FUNC2();

		if (!path) {
			ret = -ENOMEM;
			goto fail;
		}
		locked = true;
		FUNC11(&trans->transaction->cache_write_mutex);
		if (!FUNC10(&block_group->io_list)) {
			FUNC9(&block_group->io_list);

			FUNC8(trans, block_group, path);
			FUNC5(block_group);
		}

		/*
		 * now that we've truncated the cache away, its no longer
		 * setup or written
		 */
		FUNC13(&block_group->lock);
		block_group->disk_cache_state = BTRFS_DC_CLEAR;
		FUNC14(&block_group->lock);
		FUNC3(path);
	}

	FUNC4(FUNC0(inode), 0);
	FUNC15(inode, 0);

	/*
	 * We skip the throttling logic for free space cache inodes, so we don't
	 * need to check for -EAGAIN.
	 */
	ret = FUNC6(trans, root, inode,
					 0, BTRFS_EXTENT_DATA_KEY);
	if (ret)
		goto fail;

	ret = FUNC7(trans, root, inode);

fail:
	if (locked)
		FUNC12(&trans->transaction->cache_write_mutex);
	if (ret)
		FUNC1(trans, ret);

	return ret;
}