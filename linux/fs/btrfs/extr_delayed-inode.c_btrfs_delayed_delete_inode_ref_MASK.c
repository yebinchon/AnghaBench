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
struct btrfs_inode {TYPE_2__* root; } ;
struct btrfs_fs_info {TYPE_1__* delayed_root; int /*<<< orphan*/  flags; } ;
struct btrfs_delayed_node {int /*<<< orphan*/  mutex; int /*<<< orphan*/  count; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {struct btrfs_fs_info* fs_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  items; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_DELAYED_NODE_DEL_IREF ; 
 int /*<<< orphan*/  BTRFS_FS_LOG_RECOVERING ; 
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct btrfs_delayed_node*) ; 
 int FUNC1 (struct btrfs_delayed_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct btrfs_delayed_node* FUNC3 (struct btrfs_inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_delayed_node*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(struct btrfs_inode *inode)
{
	struct btrfs_fs_info *fs_info = inode->root->fs_info;
	struct btrfs_delayed_node *delayed_node;

	/*
	 * we don't do delayed inode updates during log recovery because it
	 * leads to enospc problems.  This means we also can't do
	 * delayed inode refs
	 */
	if (FUNC8(BTRFS_FS_LOG_RECOVERING, &fs_info->flags))
		return -EAGAIN;

	delayed_node = FUNC3(inode);
	if (FUNC0(delayed_node))
		return FUNC1(delayed_node);

	/*
	 * We don't reserve space for inode ref deletion is because:
	 * - We ONLY do async inode ref deletion for the inode who has only
	 *   one link(i_nlink == 1), it means there is only one inode ref.
	 *   And in most case, the inode ref and the inode item are in the
	 *   same leaf, and we will deal with them at the same time.
	 *   Since we are sure we will reserve the space for the inode item,
	 *   it is unnecessary to reserve space for inode ref deletion.
	 * - If the inode ref and the inode item are not in the same leaf,
	 *   We also needn't worry about enospc problem, because we reserve
	 *   much more space for the inode update than it needs.
	 * - At the worst, we can steal some space from the global reservation.
	 *   It is very rare.
	 */
	FUNC5(&delayed_node->mutex);
	if (FUNC8(BTRFS_DELAYED_NODE_DEL_IREF, &delayed_node->flags))
		goto release_node;

	FUNC7(BTRFS_DELAYED_NODE_DEL_IREF, &delayed_node->flags);
	delayed_node->count++;
	FUNC2(&fs_info->delayed_root->items);
release_node:
	FUNC6(&delayed_node->mutex);
	FUNC4(delayed_node);
	return 0;
}