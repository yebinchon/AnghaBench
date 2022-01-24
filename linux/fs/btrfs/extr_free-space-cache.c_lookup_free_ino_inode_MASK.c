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
struct inode {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  ino_cache_lock; struct inode* ino_cache_inode; int /*<<< orphan*/  fs_info; } ;
struct btrfs_path {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct btrfs_root*,struct btrfs_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct inode *FUNC6(struct btrfs_root *root,
				    struct btrfs_path *path)
{
	struct inode *inode = NULL;

	FUNC4(&root->ino_cache_lock);
	if (root->ino_cache_inode)
		inode = FUNC3(root->ino_cache_inode);
	FUNC5(&root->ino_cache_lock);
	if (inode)
		return inode;

	inode = FUNC1(root, path, 0);
	if (FUNC0(inode))
		return inode;

	FUNC4(&root->ino_cache_lock);
	if (!FUNC2(root->fs_info))
		root->ino_cache_inode = FUNC3(inode);
	FUNC5(&root->ino_cache_lock);

	return inode;
}