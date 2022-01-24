#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct extent_changeset {int dummy; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  bytes_reserved; struct btrfs_block_rsv* block_rsv; int /*<<< orphan*/  transid; } ;
struct TYPE_5__ {scalar_t__ objectid; } ;
struct btrfs_root {scalar_t__ ino_cache_state; int /*<<< orphan*/  ino_cache_lock; int /*<<< orphan*/  root_item; TYPE_1__ root_key; struct btrfs_free_space_ctl* free_ino_ctl; struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_block_rsv {int dummy; } ;
struct btrfs_fs_info {struct btrfs_block_rsv trans_block_rsv; } ;
struct btrfs_free_space_ctl {int free_extents; int total_bitmaps; int /*<<< orphan*/  tree_lock; } ;
struct btrfs_free_space {int dummy; } ;
struct TYPE_6__ {scalar_t__ generation; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ BTRFS_CACHE_FINISHED ; 
 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ; 
 scalar_t__ BTRFS_FS_TREE_OBJECTID ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 scalar_t__ BTRFS_LAST_FREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_RESERVE_NO_FLUSH ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  INODE_MAP_CACHE ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int PAGE_SIZE ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_trans_handle*,int) ; 
 struct btrfs_path* FUNC6 () ; 
 int FUNC7 (struct btrfs_root*,struct btrfs_block_rsv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_fs_info*,struct btrfs_block_rsv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_fs_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int,int) ; 
 int FUNC12 (struct inode*,struct extent_changeset**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_path*) ; 
 int FUNC14 (struct inode*,struct btrfs_trans_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct btrfs_trans_handle*,int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC18 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ; 
 int FUNC19 (struct btrfs_root*,struct btrfs_trans_handle*,struct btrfs_path*,struct inode*) ; 
 int FUNC20 (struct btrfs_root*,struct btrfs_trans_handle*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC21 (struct extent_changeset*) ; 
 scalar_t__ FUNC22 (struct inode*) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*) ; 
 struct inode* FUNC24 (struct btrfs_root*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC28(struct btrfs_root *root,
			 struct btrfs_trans_handle *trans)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct btrfs_free_space_ctl *ctl = root->free_ino_ctl;
	struct btrfs_path *path;
	struct inode *inode;
	struct btrfs_block_rsv *rsv;
	struct extent_changeset *data_reserved = NULL;
	u64 num_bytes;
	u64 alloc_hint = 0;
	int ret;
	int prealloc;
	bool retry = false;

	/* only fs tree and subvol/snap needs ino cache */
	if (root->root_key.objectid != BTRFS_FS_TREE_OBJECTID &&
	    (root->root_key.objectid < BTRFS_FIRST_FREE_OBJECTID ||
	     root->root_key.objectid > BTRFS_LAST_FREE_OBJECTID))
		return 0;

	/* Don't save inode cache if we are deleting this root */
	if (FUNC15(&root->root_item) == 0)
		return 0;

	if (!FUNC16(fs_info, INODE_MAP_CACHE))
		return 0;

	path = FUNC6();
	if (!path)
		return -ENOMEM;

	rsv = trans->block_rsv;
	trans->block_rsv = &fs_info->trans_block_rsv;

	num_bytes = trans->bytes_reserved;
	/*
	 * 1 item for inode item insertion if need
	 * 4 items for inode item update (in the worst case)
	 * 1 items for slack space if we need do truncation
	 * 1 item for free space object
	 * 3 items for pre-allocation
	 */
	trans->bytes_reserved = FUNC9(fs_info, 10);
	ret = FUNC7(root, trans->block_rsv,
				  trans->bytes_reserved,
				  BTRFS_RESERVE_NO_FLUSH);
	if (ret)
		goto out;
	FUNC27(fs_info, "ino_cache", trans->transid,
				      trans->bytes_reserved, 1);
again:
	inode = FUNC24(root, path);
	if (FUNC3(inode) && (FUNC4(inode) != -ENOENT || retry)) {
		ret = FUNC4(inode);
		goto out_release;
	}

	if (FUNC3(inode)) {
		FUNC2(retry); /* Logic error */
		retry = true;

		ret = FUNC20(root, trans, path);
		if (ret)
			goto out_release;
		goto again;
	}

	FUNC1(inode)->generation = 0;
	ret = FUNC18(trans, root, inode);
	if (ret) {
		FUNC5(trans, ret);
		goto out_put;
	}

	if (FUNC22(inode) > 0) {
		ret = FUNC17(trans, NULL, inode);
		if (ret) {
			if (ret != -ENOSPC)
				FUNC5(trans, ret);
			goto out_put;
		}
	}

	FUNC25(&root->ino_cache_lock);
	if (root->ino_cache_state != BTRFS_CACHE_FINISHED) {
		ret = -1;
		FUNC26(&root->ino_cache_lock);
		goto out_put;
	}
	FUNC26(&root->ino_cache_lock);

	FUNC25(&ctl->tree_lock);
	prealloc = sizeof(struct btrfs_free_space) * ctl->free_extents;
	prealloc = FUNC0(prealloc, PAGE_SIZE);
	prealloc += ctl->total_bitmaps * PAGE_SIZE;
	FUNC26(&ctl->tree_lock);

	/* Just to make sure we have enough space */
	prealloc += 8 * PAGE_SIZE;

	ret = FUNC12(inode, &data_reserved, 0, prealloc);
	if (ret)
		goto out_put;

	ret = FUNC14(inode, trans, 0, 0, prealloc,
					      prealloc, prealloc, &alloc_hint);
	if (ret) {
		FUNC10(FUNC1(inode), prealloc);
		FUNC11(FUNC1(inode), prealloc, true);
		goto out_put;
	}

	ret = FUNC19(root, trans, path, inode);
	FUNC10(FUNC1(inode), prealloc);
out_put:
	FUNC23(inode);
out_release:
	FUNC27(fs_info, "ino_cache", trans->transid,
				      trans->bytes_reserved, 0);
	FUNC8(fs_info, trans->block_rsv,
				trans->bytes_reserved);
out:
	trans->block_rsv = rsv;
	trans->bytes_reserved = num_bytes;

	FUNC13(path);
	FUNC21(data_reserved);
	return ret;
}