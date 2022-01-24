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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef  scalar_t__ efs_ino_t ;

/* Variables and functions */
 struct dentry* FUNC0 (struct inode*,struct dentry*) ; 
 scalar_t__ FUNC1 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

struct dentry *FUNC3(struct inode *dir, struct dentry *dentry, unsigned int flags)
{
	efs_ino_t inodenum;
	struct inode *inode = NULL;

	inodenum = FUNC1(dir, dentry->d_name.name, dentry->d_name.len);
	if (inodenum)
		inode = FUNC2(dir->i_sb, inodenum);

	return FUNC0(inode, dentry);
}