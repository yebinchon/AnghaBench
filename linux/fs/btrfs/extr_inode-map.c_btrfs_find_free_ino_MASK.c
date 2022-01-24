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
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_root {scalar_t__ ino_cache_state; TYPE_1__* free_ino_ctl; int /*<<< orphan*/  ino_cache_wait; int /*<<< orphan*/  fs_info; } ;
struct TYPE_2__ {scalar_t__ free_space; } ;

/* Variables and functions */
 scalar_t__ BTRFS_CACHE_ERROR ; 
 scalar_t__ BTRFS_CACHE_FINISHED ; 
 int ENOSPC ; 
 int /*<<< orphan*/  INODE_MAP_CACHE ; 
 int FUNC0 (struct btrfs_root*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int FUNC5(struct btrfs_root *root, u64 *objectid)
{
	if (!FUNC2(root->fs_info, INODE_MAP_CACHE))
		return FUNC0(root, objectid);

again:
	*objectid = FUNC1(root);

	if (*objectid != 0)
		return 0;

	FUNC3(root);

	FUNC4(root->ino_cache_wait,
		   root->ino_cache_state == BTRFS_CACHE_FINISHED ||
		   root->ino_cache_state == BTRFS_CACHE_ERROR ||
		   root->free_ino_ctl->free_space > 0);

	if (root->ino_cache_state == BTRFS_CACHE_FINISHED &&
	    root->free_ino_ctl->free_space == 0)
		return -ENOSPC;
	else if (root->ino_cache_state == BTRFS_CACHE_ERROR)
		return FUNC0(root, objectid);
	else
		goto again;
}