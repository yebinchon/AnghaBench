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
struct super_block {int dummy; } ;
struct inode {int i_mode; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_INO ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  coda_ioctl_inode_operations ; 
 int /*<<< orphan*/  coda_ioctl_operations ; 
 struct inode* FUNC1 (struct super_block*) ; 

struct inode *FUNC2(struct super_block *sb)
{
	struct inode *inode = FUNC1(sb);
	if (inode) {
		inode->i_ino = CTL_INO;
		inode->i_op = &coda_ioctl_inode_operations;
		inode->i_fop = &coda_ioctl_operations;
		inode->i_mode = 0444;
		return inode;
	}
	return FUNC0(-ENOMEM);
}