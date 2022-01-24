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
struct inode {int i_mode; char* i_link; int /*<<< orphan*/ * i_op; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debugfs_symlink_inode_operations ; 
 struct dentry* FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 struct dentry* FUNC9 (char const*,struct dentry*) ; 
 scalar_t__ FUNC10 (int) ; 

struct dentry *FUNC11(const char *name, struct dentry *parent,
				      const char *target)
{
	struct dentry *dentry;
	struct inode *inode;
	char *link = FUNC7(target, GFP_KERNEL);
	if (!link)
		return FUNC0(-ENOMEM);

	dentry = FUNC9(name, parent);
	if (FUNC1(dentry)) {
		FUNC6(link);
		return dentry;
	}

	inode = FUNC3(dentry->d_sb);
	if (FUNC10(!inode)) {
		FUNC8("out of free dentries, can not create symlink '%s'\n",
		       name);
		FUNC6(link);
		return FUNC5(dentry);
	}
	inode->i_mode = S_IFLNK | S_IRWXUGO;
	inode->i_op = &debugfs_symlink_inode_operations;
	inode->i_link = link;
	FUNC2(dentry, inode);
	return FUNC4(dentry);
}