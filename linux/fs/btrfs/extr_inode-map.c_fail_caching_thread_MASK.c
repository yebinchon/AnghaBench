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
struct btrfs_root {int /*<<< orphan*/  ino_cache_wait; int /*<<< orphan*/  ino_cache_lock; int /*<<< orphan*/  ino_cache_state; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_CACHE_ERROR ; 
 int /*<<< orphan*/  INODE_MAP_CACHE ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct btrfs_root *root)
{
	struct btrfs_fs_info *fs_info = root->fs_info;

	FUNC1(fs_info, "failed to start inode caching task");
	FUNC0(fs_info, INODE_MAP_CACHE,
				     "disabling inode map caching");
	FUNC2(&root->ino_cache_lock);
	root->ino_cache_state = BTRFS_CACHE_ERROR;
	FUNC3(&root->ino_cache_lock);
	FUNC4(&root->ino_cache_wait);
}