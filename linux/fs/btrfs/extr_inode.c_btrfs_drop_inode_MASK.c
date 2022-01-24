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
struct inode {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  root_item; } ;
struct TYPE_2__ {struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct inode*) ; 

int FUNC3(struct inode *inode)
{
	struct btrfs_root *root = FUNC0(inode)->root;

	if (root == NULL)
		return 1;

	/* the snap/subvol tree is on deleting */
	if (FUNC1(&root->root_item) == 0)
		return 1;
	else
		return FUNC2(inode);
}