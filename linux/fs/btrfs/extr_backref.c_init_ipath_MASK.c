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
struct inode_fs_paths {struct btrfs_root* fs_root; struct btrfs_data_container* fspath; struct btrfs_path* btrfs_path; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_data_container {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct inode_fs_paths* FUNC0 (struct btrfs_data_container*) ; 
 struct inode_fs_paths* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct btrfs_data_container*) ; 
 struct btrfs_data_container* FUNC3 (int /*<<< orphan*/ ) ; 
 struct inode_fs_paths* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_data_container*) ; 

struct inode_fs_paths *FUNC6(s32 total_bytes, struct btrfs_root *fs_root,
					struct btrfs_path *path)
{
	struct inode_fs_paths *ifp;
	struct btrfs_data_container *fspath;

	fspath = FUNC3(total_bytes);
	if (FUNC2(fspath))
		return FUNC0(fspath);

	ifp = FUNC4(sizeof(*ifp), GFP_KERNEL);
	if (!ifp) {
		FUNC5(fspath);
		return FUNC1(-ENOMEM);
	}

	ifp->btrfs_path = path;
	ifp->fspath = fspath;
	ifp->fs_root = fs_root;

	return ifp;
}