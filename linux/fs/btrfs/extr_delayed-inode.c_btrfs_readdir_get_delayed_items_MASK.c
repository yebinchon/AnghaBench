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
struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct btrfs_delayed_node {int /*<<< orphan*/  refs; int /*<<< orphan*/  mutex; } ;
struct btrfs_delayed_item {int /*<<< orphan*/  readdir_list; int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct btrfs_delayed_item* FUNC1 (struct btrfs_delayed_node*) ; 
 struct btrfs_delayed_item* FUNC2 (struct btrfs_delayed_node*) ; 
 struct btrfs_delayed_item* FUNC3 (struct btrfs_delayed_item*) ; 
 struct btrfs_delayed_node* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

bool FUNC12(struct inode *inode,
				     struct list_head *ins_list,
				     struct list_head *del_list)
{
	struct btrfs_delayed_node *delayed_node;
	struct btrfs_delayed_item *item;

	delayed_node = FUNC4(FUNC0(inode));
	if (!delayed_node)
		return false;

	/*
	 * We can only do one readdir with delayed items at a time because of
	 * item->readdir_list.
	 */
	FUNC6(inode);
	FUNC5(inode);

	FUNC8(&delayed_node->mutex);
	item = FUNC2(delayed_node);
	while (item) {
		FUNC11(&item->refs);
		FUNC7(&item->readdir_list, ins_list);
		item = FUNC3(item);
	}

	item = FUNC1(delayed_node);
	while (item) {
		FUNC11(&item->refs);
		FUNC7(&item->readdir_list, del_list);
		item = FUNC3(item);
	}
	FUNC9(&delayed_node->mutex);
	/*
	 * This delayed node is still cached in the btrfs inode, so refs
	 * must be > 1 now, and we needn't check it is going to be freed
	 * or not.
	 *
	 * Besides that, this function is used to read dir, we do not
	 * insert/delete delayed items in this period. So we also needn't
	 * requeue or dequeue this delayed node.
	 */
	FUNC10(&delayed_node->refs);

	return true;
}