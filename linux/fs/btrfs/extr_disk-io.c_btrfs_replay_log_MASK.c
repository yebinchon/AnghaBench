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
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_super_block {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  node; } ;
struct btrfs_fs_info {int /*<<< orphan*/  sb; scalar_t__ generation; struct btrfs_super_block* super_copy; } ;
struct btrfs_fs_devices {scalar_t__ rw_devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_TREE_LOG_OBJECTID ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_root*,struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 struct btrfs_root* FUNC3 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_fs_info*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*,int,char*) ; 
 int FUNC7 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_super_block*) ; 
 int FUNC9 (struct btrfs_super_block*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_fs_info*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_fs_info*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct btrfs_fs_info *fs_info,
			    struct btrfs_fs_devices *fs_devices)
{
	int ret;
	struct btrfs_root *log_tree_root;
	struct btrfs_super_block *disk_super = fs_info->super_copy;
	u64 bytenr = FUNC8(disk_super);
	int level = FUNC9(disk_super);

	if (fs_devices->rw_devices == 0) {
		FUNC10(fs_info, "log replay required on RO media");
		return -EIO;
	}

	log_tree_root = FUNC3(fs_info, GFP_KERNEL);
	if (!log_tree_root)
		return -ENOMEM;

	FUNC2(log_tree_root, fs_info, BTRFS_TREE_LOG_OBJECTID);

	log_tree_root->node = FUNC14(fs_info, bytenr,
					      fs_info->generation + 1,
					      level, NULL);
	if (FUNC0(log_tree_root->node)) {
		FUNC10(fs_info, "failed to read log tree");
		ret = FUNC1(log_tree_root->node);
		FUNC13(log_tree_root);
		return ret;
	} else if (!FUNC11(log_tree_root->node)) {
		FUNC5(fs_info, "failed to read log tree");
		FUNC12(log_tree_root->node);
		FUNC13(log_tree_root);
		return -EIO;
	}
	/* returns with log_tree_root freed on success */
	ret = FUNC7(log_tree_root);
	if (ret) {
		FUNC6(fs_info, ret,
				      "Failed to recover log tree");
		FUNC12(log_tree_root->node);
		FUNC13(log_tree_root);
		return ret;
	}

	if (FUNC15(fs_info->sb)) {
		ret = FUNC4(fs_info);
		if (ret)
			return ret;
	}

	return 0;
}