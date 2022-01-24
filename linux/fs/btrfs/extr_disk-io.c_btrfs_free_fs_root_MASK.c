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
struct btrfs_root {int /*<<< orphan*/  free_ino_pinned; int /*<<< orphan*/  free_ino_ctl; int /*<<< orphan*/  commit_root; int /*<<< orphan*/  node; scalar_t__ subv_writers; scalar_t__ anon_dev; int /*<<< orphan*/  inode_tree; int /*<<< orphan*/  ino_cache_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct btrfs_root *root)
{
	FUNC6(root->ino_cache_inode);
	FUNC1(!FUNC0(&root->inode_tree));
	if (root->anon_dev)
		FUNC4(root->anon_dev);
	if (root->subv_writers)
		FUNC2(root->subv_writers);
	FUNC5(root->node);
	FUNC5(root->commit_root);
	FUNC7(root->free_ino_ctl);
	FUNC7(root->free_ino_pinned);
	FUNC3(root);
}