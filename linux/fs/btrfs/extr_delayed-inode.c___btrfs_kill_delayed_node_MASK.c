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
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_delayed_node {int /*<<< orphan*/  mutex; int /*<<< orphan*/  flags; struct btrfs_root* root; } ;
struct btrfs_delayed_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_DELAYED_NODE_DEL_IREF ; 
 int /*<<< orphan*/  BTRFS_DELAYED_NODE_INODE_DIRTY ; 
 struct btrfs_delayed_item* FUNC0 (struct btrfs_delayed_node*) ; 
 struct btrfs_delayed_item* FUNC1 (struct btrfs_delayed_node*) ; 
 struct btrfs_delayed_item* FUNC2 (struct btrfs_delayed_item*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*,struct btrfs_delayed_node*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_root*,struct btrfs_delayed_item*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_delayed_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_delayed_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_delayed_item*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct btrfs_delayed_node *delayed_node)
{
	struct btrfs_root *root = delayed_node->root;
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct btrfs_delayed_item *curr_item, *prev_item;

	FUNC8(&delayed_node->mutex);
	curr_item = FUNC1(delayed_node);
	while (curr_item) {
		FUNC4(root, curr_item);
		prev_item = curr_item;
		curr_item = FUNC2(prev_item);
		FUNC7(prev_item);
	}

	curr_item = FUNC0(delayed_node);
	while (curr_item) {
		FUNC4(root, curr_item);
		prev_item = curr_item;
		curr_item = FUNC2(prev_item);
		FUNC7(prev_item);
	}

	if (FUNC10(BTRFS_DELAYED_NODE_DEL_IREF, &delayed_node->flags))
		FUNC6(delayed_node);

	if (FUNC10(BTRFS_DELAYED_NODE_INODE_DIRTY, &delayed_node->flags)) {
		FUNC3(fs_info, delayed_node, false);
		FUNC5(delayed_node);
	}
	FUNC9(&delayed_node->mutex);
}