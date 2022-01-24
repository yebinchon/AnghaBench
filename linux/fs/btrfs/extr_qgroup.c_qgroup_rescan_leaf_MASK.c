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
typedef  void* u64 ;
struct ulist {int dummy; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ type; void* objectid; void* offset; } ;
struct TYPE_2__ {void* objectid; int /*<<< orphan*/  offset; int /*<<< orphan*/  type; } ;
struct btrfs_fs_info {TYPE_1__ qgroup_rescan_progress; void* nodesize; int /*<<< orphan*/  qgroup_rescan_lock; int /*<<< orphan*/  extent_root; } ;

/* Variables and functions */
 scalar_t__ BTRFS_EXTENT_ITEM_KEY ; 
 scalar_t__ BTRFS_METADATA_ITEM_KEY ; 
 int ENOMEM ; 
 struct extent_buffer* FUNC0 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*,char*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct btrfs_fs_info*,void*,int /*<<< orphan*/ ,struct ulist**,int) ; 
 int FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,struct btrfs_key*,int) ; 
 int FUNC5 (struct btrfs_trans_handle*,void*,void*,int /*<<< orphan*/ *,struct ulist*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_path*) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,struct btrfs_path*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*) ; 
 int FUNC9 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct btrfs_trans_handle *trans,
			      struct btrfs_path *path)
{
	struct btrfs_fs_info *fs_info = trans->fs_info;
	struct btrfs_key found;
	struct extent_buffer *scratch_leaf = NULL;
	struct ulist *roots = NULL;
	u64 num_bytes;
	bool done;
	int slot;
	int ret;

	FUNC10(&fs_info->qgroup_rescan_lock);
	ret = FUNC7(fs_info->extent_root,
					 &fs_info->qgroup_rescan_progress,
					 path, 1, 0);

	FUNC1(fs_info,
		"current progress key (%llu %u %llu), search_slot ret %d",
		fs_info->qgroup_rescan_progress.objectid,
		fs_info->qgroup_rescan_progress.type,
		fs_info->qgroup_rescan_progress.offset, ret);

	if (ret) {
		/*
		 * The rescan is about to end, we will not be scanning any
		 * further blocks. We cannot unset the RESCAN flag here, because
		 * we want to commit the transaction if everything went well.
		 * To make the live accounting work in this phase, we set our
		 * scan progress pointer such that every real extent objectid
		 * will be smaller.
		 */
		fs_info->qgroup_rescan_progress.objectid = (u64)-1;
		FUNC6(path);
		FUNC11(&fs_info->qgroup_rescan_lock);
		return ret;
	}
	done = FUNC9(path);

	FUNC4(path->nodes[0], &found,
			      FUNC3(path->nodes[0]) - 1);
	fs_info->qgroup_rescan_progress.objectid = found.objectid + 1;

	scratch_leaf = FUNC0(path->nodes[0]);
	if (!scratch_leaf) {
		ret = -ENOMEM;
		FUNC11(&fs_info->qgroup_rescan_lock);
		goto out;
	}
	slot = path->slots[0];
	FUNC6(path);
	FUNC11(&fs_info->qgroup_rescan_lock);

	for (; slot < FUNC3(scratch_leaf); ++slot) {
		FUNC4(scratch_leaf, &found, slot);
		if (found.type != BTRFS_EXTENT_ITEM_KEY &&
		    found.type != BTRFS_METADATA_ITEM_KEY)
			continue;
		if (found.type == BTRFS_METADATA_ITEM_KEY)
			num_bytes = fs_info->nodesize;
		else
			num_bytes = found.offset;

		ret = FUNC2(NULL, fs_info, found.objectid, 0,
					   &roots, false);
		if (ret < 0)
			goto out;
		/* For rescan, just pass old_roots as NULL */
		ret = FUNC5(trans, found.objectid,
						  num_bytes, NULL, roots);
		if (ret < 0)
			goto out;
	}
out:
	if (scratch_leaf)
		FUNC8(scratch_leaf);

	if (done && !ret) {
		ret = 1;
		fs_info->qgroup_rescan_progress.objectid = (u64)-1;
	}
	return ret;
}