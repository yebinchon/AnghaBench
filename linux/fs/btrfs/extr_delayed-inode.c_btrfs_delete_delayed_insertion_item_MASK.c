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
struct btrfs_key {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_delayed_node {int /*<<< orphan*/  mutex; int /*<<< orphan*/  root; } ;
struct btrfs_delayed_item {int dummy; } ;

/* Variables and functions */
 struct btrfs_delayed_item* FUNC0 (struct btrfs_delayed_node*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct btrfs_delayed_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_delayed_item*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct btrfs_fs_info *fs_info,
					       struct btrfs_delayed_node *node,
					       struct btrfs_key *key)
{
	struct btrfs_delayed_item *item;

	FUNC3(&node->mutex);
	item = FUNC0(node, key);
	if (!item) {
		FUNC4(&node->mutex);
		return 1;
	}

	FUNC1(node->root, item);
	FUNC2(item);
	FUNC4(&node->mutex);
	return 0;
}