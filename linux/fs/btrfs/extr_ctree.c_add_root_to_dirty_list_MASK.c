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
struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_root {int /*<<< orphan*/  dirty_list; TYPE_1__ root_key; int /*<<< orphan*/  state; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int /*<<< orphan*/  trans_lock; int /*<<< orphan*/  dirty_cowonly_roots; } ;

/* Variables and functions */
 scalar_t__ BTRFS_EXTENT_TREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_ROOT_DIRTY ; 
 int /*<<< orphan*/  BTRFS_ROOT_TRACK_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct btrfs_root *root)
{
	struct btrfs_fs_info *fs_info = root->fs_info;

	if (FUNC5(BTRFS_ROOT_DIRTY, &root->state) ||
	    !FUNC5(BTRFS_ROOT_TRACK_DIRTY, &root->state))
		return;

	FUNC2(&fs_info->trans_lock);
	if (!FUNC4(BTRFS_ROOT_DIRTY, &root->state)) {
		/* Want the extent tree to be the last on the list */
		if (root->root_key.objectid == BTRFS_EXTENT_TREE_OBJECTID)
			FUNC1(&root->dirty_list,
				       &fs_info->dirty_cowonly_roots);
		else
			FUNC0(&root->dirty_list,
				  &fs_info->dirty_cowonly_roots);
	}
	FUNC3(&fs_info->trans_lock);
}