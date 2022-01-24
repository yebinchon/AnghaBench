#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct TYPE_3__ {struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  inode_prop_iterator ; 
 int FUNC2 (struct btrfs_root*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*) ; 

int FUNC3(struct inode *inode, struct btrfs_path *path)
{
	struct btrfs_root *root = FUNC0(inode)->root;
	u64 ino = FUNC1(FUNC0(inode));
	int ret;

	ret = FUNC2(root, path, ino, inode_prop_iterator, inode);

	return ret;
}