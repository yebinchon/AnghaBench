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
typedef  void* u32 ;
struct btrfs_super_block {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  fs_state; int /*<<< orphan*/ * freed_extents; int /*<<< orphan*/ * pinned_extents; int /*<<< orphan*/  fs_roots_radix; int /*<<< orphan*/  buffer_radix; int /*<<< orphan*/  tree_mod_seq_list; int /*<<< orphan*/  dead_roots; int /*<<< orphan*/  dirty_qgroups; int /*<<< orphan*/  tree_mod_seq; int /*<<< orphan*/ * qgroup_ulist; int /*<<< orphan*/  qgroup_tree; int /*<<< orphan*/ * running_transaction; int /*<<< orphan*/  tree_mod_log_lock; int /*<<< orphan*/  qgroup_rescan_lock; int /*<<< orphan*/  qgroup_ioctl_lock; int /*<<< orphan*/  tree_mod_seq_lock; int /*<<< orphan*/  fs_roots_radix_lock; int /*<<< orphan*/  super_lock; int /*<<< orphan*/  qgroup_lock; int /*<<< orphan*/  buffer_lock; struct btrfs_fs_info* super_copy; struct btrfs_fs_info* fs_devices; int /*<<< orphan*/  subvol_srcu; void* sectorsize; void* nodesize; } ;
struct btrfs_fs_devices {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mnt_sb; } ;
struct TYPE_3__ {struct btrfs_fs_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_STATE_DUMMY_FS_INFO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IO_TREE_FS_INFO_FREED_EXTENTS0 ; 
 int /*<<< orphan*/  IO_TREE_FS_INFO_FREED_EXTENTS1 ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_fs_info*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_2__* test_mnt ; 

struct btrfs_fs_info *FUNC11(u32 nodesize, u32 sectorsize)
{
	struct btrfs_fs_info *fs_info = FUNC6(sizeof(struct btrfs_fs_info),
						GFP_KERNEL);

	if (!fs_info)
		return fs_info;
	fs_info->fs_devices = FUNC6(sizeof(struct btrfs_fs_devices),
				      GFP_KERNEL);
	if (!fs_info->fs_devices) {
		FUNC5(fs_info);
		return NULL;
	}
	fs_info->super_copy = FUNC6(sizeof(struct btrfs_super_block),
				      GFP_KERNEL);
	if (!fs_info->super_copy) {
		FUNC5(fs_info->fs_devices);
		FUNC5(fs_info);
		return NULL;
	}

	fs_info->nodesize = nodesize;
	fs_info->sectorsize = sectorsize;

	if (FUNC4(&fs_info->subvol_srcu)) {
		FUNC5(fs_info->fs_devices);
		FUNC5(fs_info->super_copy);
		FUNC5(fs_info);
		return NULL;
	}

	FUNC10(&fs_info->buffer_lock);
	FUNC10(&fs_info->qgroup_lock);
	FUNC10(&fs_info->super_lock);
	FUNC10(&fs_info->fs_roots_radix_lock);
	FUNC10(&fs_info->tree_mod_seq_lock);
	FUNC7(&fs_info->qgroup_ioctl_lock);
	FUNC7(&fs_info->qgroup_rescan_lock);
	FUNC8(&fs_info->tree_mod_log_lock);
	fs_info->running_transaction = NULL;
	fs_info->qgroup_tree = RB_ROOT;
	fs_info->qgroup_ulist = NULL;
	FUNC2(&fs_info->tree_mod_seq, 0);
	FUNC0(&fs_info->dirty_qgroups);
	FUNC0(&fs_info->dead_roots);
	FUNC0(&fs_info->tree_mod_seq_list);
	FUNC1(&fs_info->buffer_radix, GFP_ATOMIC);
	FUNC1(&fs_info->fs_roots_radix, GFP_ATOMIC);
	FUNC3(fs_info, &fs_info->freed_extents[0],
			    IO_TREE_FS_INFO_FREED_EXTENTS0, NULL);
	FUNC3(fs_info, &fs_info->freed_extents[1],
			    IO_TREE_FS_INFO_FREED_EXTENTS1, NULL);
	fs_info->pinned_extents = &fs_info->freed_extents[0];
	FUNC9(BTRFS_FS_STATE_DUMMY_FS_INFO, &fs_info->fs_state);

	test_mnt->mnt_sb->s_fs_info = fs_info;

	return fs_info;
}