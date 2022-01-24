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
struct inode {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {TYPE_1__ root_key; int /*<<< orphan*/  root_item; struct btrfs_free_space_ctl* free_ino_ctl; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_free_space_ctl {int dummy; } ;
struct TYPE_4__ {scalar_t__ generation; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  INODE_MAP_CACHE ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct btrfs_root*,struct inode*,struct btrfs_free_space_ctl*,struct btrfs_path*,int /*<<< orphan*/ ) ; 
 struct btrfs_path* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_path*) ; 
 scalar_t__ FUNC6 (struct btrfs_fs_info*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 struct inode* FUNC10 (struct btrfs_root*,struct btrfs_path*) ; 

int FUNC11(struct btrfs_fs_info *fs_info, struct btrfs_root *root)
{
	struct btrfs_free_space_ctl *ctl = root->free_ino_ctl;
	struct btrfs_path *path;
	struct inode *inode;
	int ret = 0;
	u64 root_gen = FUNC7(&root->root_item);

	if (!FUNC8(fs_info, INODE_MAP_CACHE))
		return 0;

	/*
	 * If we're unmounting then just return, since this does a search on the
	 * normal root and not the commit root and we could deadlock.
	 */
	if (FUNC6(fs_info))
		return 0;

	path = FUNC3();
	if (!path)
		return 0;

	inode = FUNC10(root, path);
	if (FUNC1(inode))
		goto out;

	if (root_gen != FUNC0(inode)->generation)
		goto out_put;

	ret = FUNC2(root, inode, ctl, path, 0);

	if (ret < 0)
		FUNC4(fs_info,
			"failed to load free ino cache for root %llu",
			root->root_key.objectid);
out_put:
	FUNC9(inode);
out:
	FUNC5(path);
	return ret;
}