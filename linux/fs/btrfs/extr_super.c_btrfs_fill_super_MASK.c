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
struct super_block {int s_time_gran; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  s_root; int /*<<< orphan*/  s_iflags; int /*<<< orphan*/  s_xattr; int /*<<< orphan*/ * s_export_op; int /*<<< orphan*/ * s_d_op; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_maxbytes; } ;
struct inode {int dummy; } ;
struct btrfs_key {scalar_t__ offset; int /*<<< orphan*/  type; int /*<<< orphan*/  objectid; } ;
struct btrfs_fs_info {int /*<<< orphan*/  fs_root; } ;
struct btrfs_fs_devices {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FIRST_FREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_INODE_ITEM_KEY ; 
 int /*<<< orphan*/  BTRFS_SUPER_MAGIC ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  SB_ACTIVE ; 
 int /*<<< orphan*/  SB_I_CGROUPWB ; 
 int /*<<< orphan*/  SB_I_VERSION ; 
 int /*<<< orphan*/  SB_POSIXACL ; 
 int /*<<< orphan*/  btrfs_dentry_operations ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,char*) ; 
 int /*<<< orphan*/  btrfs_export_ops ; 
 struct inode* FUNC3 (struct super_block*,struct btrfs_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct btrfs_fs_info* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  btrfs_super_ops ; 
 int /*<<< orphan*/  btrfs_xattr_handlers ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct super_block*,struct btrfs_fs_devices*,char*) ; 
 int FUNC9 (struct super_block*) ; 

__attribute__((used)) static int FUNC10(struct super_block *sb,
			    struct btrfs_fs_devices *fs_devices,
			    void *data)
{
	struct inode *inode;
	struct btrfs_fs_info *fs_info = FUNC4(sb);
	struct btrfs_key key;
	int err;

	sb->s_maxbytes = MAX_LFS_FILESIZE;
	sb->s_magic = BTRFS_SUPER_MAGIC;
	sb->s_op = &btrfs_super_ops;
	sb->s_d_op = &btrfs_dentry_operations;
	sb->s_export_op = &btrfs_export_ops;
	sb->s_xattr = btrfs_xattr_handlers;
	sb->s_time_gran = 1;
#ifdef CONFIG_BTRFS_FS_POSIX_ACL
	sb->s_flags |= SB_POSIXACL;
#endif
	sb->s_flags |= SB_I_VERSION;
	sb->s_iflags |= SB_I_CGROUPWB;

	err = FUNC9(sb);
	if (err) {
		FUNC2(fs_info, "super_setup_bdi failed");
		return err;
	}

	err = FUNC8(sb, fs_devices, (char *)data);
	if (err) {
		FUNC2(fs_info, "open_ctree failed");
		return err;
	}

	key.objectid = BTRFS_FIRST_FREE_OBJECTID;
	key.type = BTRFS_INODE_ITEM_KEY;
	key.offset = 0;
	inode = FUNC3(sb, &key, fs_info->fs_root, NULL);
	if (FUNC0(inode)) {
		err = FUNC1(inode);
		goto fail_close;
	}

	sb->s_root = FUNC7(inode);
	if (!sb->s_root) {
		err = -ENOMEM;
		goto fail_close;
	}

	FUNC5(sb);
	sb->s_flags |= SB_ACTIVE;
	return 0;

fail_close:
	FUNC6(fs_info);
	return err;
}