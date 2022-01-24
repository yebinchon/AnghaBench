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
struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct btrfs_delayed_node {int /*<<< orphan*/  mutex; int /*<<< orphan*/  count; int /*<<< orphan*/  flags; int /*<<< orphan*/  inode_item; } ;
struct TYPE_4__ {TYPE_1__* delayed_root; } ;
struct TYPE_3__ {int /*<<< orphan*/  items; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_DELAYED_NODE_INODE_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct btrfs_delayed_node*) ; 
 int FUNC2 (struct btrfs_delayed_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ,struct btrfs_delayed_node*) ; 
 struct btrfs_delayed_node* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_delayed_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_trans_handle*,int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC12(struct btrfs_trans_handle *trans,
			       struct btrfs_root *root, struct inode *inode)
{
	struct btrfs_delayed_node *delayed_node;
	int ret = 0;

	delayed_node = FUNC5(FUNC0(inode));
	if (FUNC1(delayed_node))
		return FUNC2(delayed_node);

	FUNC8(&delayed_node->mutex);
	if (FUNC11(BTRFS_DELAYED_NODE_INODE_DIRTY, &delayed_node->flags)) {
		FUNC7(trans, &delayed_node->inode_item, inode);
		goto release_node;
	}

	ret = FUNC4(trans, root, FUNC0(inode),
						   delayed_node);
	if (ret)
		goto release_node;

	FUNC7(trans, &delayed_node->inode_item, inode);
	FUNC10(BTRFS_DELAYED_NODE_INODE_DIRTY, &delayed_node->flags);
	delayed_node->count++;
	FUNC3(&root->fs_info->delayed_root->items);
release_node:
	FUNC9(&delayed_node->mutex);
	FUNC6(delayed_node);
	return ret;
}