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
struct inode {int i_mode; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct dentry {int /*<<< orphan*/  d_parent; int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int S_IFDIR ; 
 int S_IRUGO ; 
 int S_IRWXU ; 
 int S_IXUGO ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  debugfs_dir_inode_operations ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  simple_dir_operations ; 
 struct dentry* FUNC9 (char const*,struct dentry*) ; 
 scalar_t__ FUNC10 (int) ; 

struct dentry *FUNC11(const char *name, struct dentry *parent)
{
	struct dentry *dentry = FUNC9(name, parent);
	struct inode *inode;

	if (FUNC0(dentry))
		return dentry;

	inode = FUNC3(dentry->d_sb);
	if (FUNC10(!inode)) {
		FUNC8("out of free dentries, can not create directory '%s'\n",
		       name);
		return FUNC5(dentry);
	}

	inode->i_mode = S_IFDIR | S_IRWXU | S_IRUGO | S_IXUGO;
	inode->i_op = &debugfs_dir_inode_operations;
	inode->i_fop = &simple_dir_operations;

	/* directory inodes start off with i_nlink == 2 (for "." entry) */
	FUNC7(inode);
	FUNC2(dentry, inode);
	FUNC7(FUNC1(dentry->d_parent));
	FUNC6(FUNC1(dentry->d_parent), dentry);
	return FUNC4(dentry);
}