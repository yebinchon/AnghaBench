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
typedef  union afs_xdr_dirent {int dummy; } afs_xdr_dirent ;
typedef  union afs_xdr_dir_block {int dummy; } afs_xdr_dir_block ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  AFS_VNODE_DELETED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,struct file*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	FUNC2("{%lu}", inode->i_ino);

	FUNC1(sizeof(union afs_xdr_dir_block) != 2048);
	FUNC1(sizeof(union afs_xdr_dirent) != 32);

	if (FUNC4(AFS_VNODE_DELETED, &FUNC0(inode)->flags))
		return -ENOENT;

	return FUNC3(inode, file);
}