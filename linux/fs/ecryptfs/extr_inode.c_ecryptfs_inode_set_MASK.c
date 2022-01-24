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
struct inode {int /*<<< orphan*/ * i_fop; int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; TYPE_1__* i_mapping; int /*<<< orphan*/  i_ino; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ecryptfs_aops ; 
 int /*<<< orphan*/  ecryptfs_dir_fops ; 
 int /*<<< orphan*/  ecryptfs_dir_iops ; 
 int /*<<< orphan*/  ecryptfs_main_fops ; 
 int /*<<< orphan*/  ecryptfs_main_iops ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  ecryptfs_symlink_iops ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, void *opaque)
{
	struct inode *lower_inode = opaque;

	FUNC2(inode, lower_inode);
	FUNC3(inode, lower_inode);
	/* i_size will be overwritten for encrypted regular files */
	FUNC4(inode, lower_inode);
	inode->i_ino = lower_inode->i_ino;
	inode->i_mapping->a_ops = &ecryptfs_aops;

	if (FUNC1(inode->i_mode))
		inode->i_op = &ecryptfs_symlink_iops;
	else if (FUNC0(inode->i_mode))
		inode->i_op = &ecryptfs_dir_iops;
	else
		inode->i_op = &ecryptfs_main_iops;

	if (FUNC0(inode->i_mode))
		inode->i_fop = &ecryptfs_dir_fops;
	else if (FUNC6(inode->i_mode))
		FUNC5(inode, inode->i_mode, inode->i_rdev);
	else
		inode->i_fop = &ecryptfs_main_fops;

	return 0;
}