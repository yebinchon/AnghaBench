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
struct btrfs_ordered_sum {int /*<<< orphan*/  list; } ;
struct btrfs_ordered_inode_tree {int /*<<< orphan*/  lock; } ;
struct btrfs_ordered_extent {int /*<<< orphan*/  list; int /*<<< orphan*/  inode; } ;
struct TYPE_2__ {struct btrfs_ordered_inode_tree ordered_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct btrfs_ordered_extent *entry,
			   struct btrfs_ordered_sum *sum)
{
	struct btrfs_ordered_inode_tree *tree;

	tree = &FUNC0(entry->inode)->ordered_tree;
	FUNC2(&tree->lock);
	FUNC1(&sum->list, &entry->list);
	FUNC3(&tree->lock);
}