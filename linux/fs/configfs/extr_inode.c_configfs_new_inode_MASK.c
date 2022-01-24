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
typedef  int /*<<< orphan*/  umode_t ;
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/ * i_op; TYPE_1__* i_mapping; int /*<<< orphan*/  i_ino; } ;
struct configfs_dirent {int /*<<< orphan*/  s_iattr; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  configfs_aops ; 
 int /*<<< orphan*/  configfs_inode_operations ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct inode* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 

struct inode *FUNC4(umode_t mode, struct configfs_dirent *sd,
				 struct super_block *s)
{
	struct inode * inode = FUNC1(s);
	if (inode) {
		inode->i_ino = FUNC0();
		inode->i_mapping->a_ops = &configfs_aops;
		inode->i_op = &configfs_inode_operations;

		if (sd->s_iattr) {
			/* sysfs_dirent has non-default attributes
			 * get them for the new inode from persistent copy
			 * in sysfs_dirent
			 */
			FUNC3(inode, sd->s_iattr);
		} else
			FUNC2(inode, mode);
	}
	return inode;
}