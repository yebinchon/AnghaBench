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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct dentry {int /*<<< orphan*/  d_parent; int /*<<< orphan*/  d_sb; struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ,struct configfs_dirent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct configfs_dirent*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 

struct inode *FUNC6(struct dentry *dentry, umode_t mode)
{
	struct inode *inode = NULL;
	struct configfs_dirent *sd;
	struct inode *p_inode;

	if (!dentry)
		return FUNC0(-ENOENT);

	if (FUNC5(dentry))
		return FUNC0(-EEXIST);

	sd = dentry->d_fsdata;
	inode = FUNC1(mode, sd, dentry->d_sb);
	if (!inode)
		return FUNC0(-ENOMEM);

	p_inode = FUNC4(dentry->d_parent);
	p_inode->i_mtime = p_inode->i_ctime = FUNC3(p_inode);
	FUNC2(sd, inode);
	return inode;
}