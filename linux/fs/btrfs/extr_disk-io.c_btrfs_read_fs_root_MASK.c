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
struct btrfs_root {int /*<<< orphan*/  root_item; int /*<<< orphan*/  state; TYPE_1__ root_key; } ;
struct btrfs_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_ROOT_REF_COWS ; 
 scalar_t__ BTRFS_TREE_LOG_OBJECTID ; 
 scalar_t__ FUNC0 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct btrfs_root* FUNC2 (struct btrfs_root*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct btrfs_root *FUNC4(struct btrfs_root *tree_root,
				      struct btrfs_key *location)
{
	struct btrfs_root *root;

	root = FUNC2(tree_root, location);
	if (FUNC0(root))
		return root;

	if (root->root_key.objectid != BTRFS_TREE_LOG_OBJECTID) {
		FUNC3(BTRFS_ROOT_REF_COWS, &root->state);
		FUNC1(&root->root_item);
	}

	return root;
}