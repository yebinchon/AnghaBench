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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_generation; } ;
struct dentry {int dummy; } ;
struct btrfs_root {scalar_t__ i_generation; } ;
struct btrfs_key {scalar_t__ offset; int /*<<< orphan*/  type; scalar_t__ objectid; } ;
struct btrfs_fs_info {int /*<<< orphan*/  subvol_srcu; } ;

/* Variables and functions */
 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_INODE_ITEM_KEY ; 
 int /*<<< orphan*/  BTRFS_ROOT_ITEM_KEY ; 
 struct dentry* FUNC0 (int) ; 
 int ESTALE ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct super_block*,struct btrfs_key*,struct inode*,int /*<<< orphan*/ *) ; 
 struct inode* FUNC4 (struct btrfs_fs_info*,struct btrfs_key*) ; 
 struct btrfs_fs_info* FUNC5 (struct super_block*) ; 
 struct dentry* FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct dentry *FUNC10(struct super_block *sb, u64 objectid,
				       u64 root_objectid, u32 generation,
				       int check_generation)
{
	struct btrfs_fs_info *fs_info = FUNC5(sb);
	struct btrfs_root *root;
	struct inode *inode;
	struct btrfs_key key;
	int index;
	int err = 0;

	if (objectid < BTRFS_FIRST_FREE_OBJECTID)
		return FUNC0(-ESTALE);

	key.objectid = root_objectid;
	key.type = BTRFS_ROOT_ITEM_KEY;
	key.offset = (u64)-1;

	index = FUNC8(&fs_info->subvol_srcu);

	root = FUNC4(fs_info, &key);
	if (FUNC1(root)) {
		err = FUNC2(root);
		goto fail;
	}

	key.objectid = objectid;
	key.type = BTRFS_INODE_ITEM_KEY;
	key.offset = 0;

	inode = FUNC3(sb, &key, root, NULL);
	if (FUNC1(inode)) {
		err = FUNC2(inode);
		goto fail;
	}

	FUNC9(&fs_info->subvol_srcu, index);

	if (check_generation && generation != inode->i_generation) {
		FUNC7(inode);
		return FUNC0(-ESTALE);
	}

	return FUNC6(inode);
fail:
	FUNC9(&fs_info->subvol_srcu, index);
	return FUNC0(err);
}