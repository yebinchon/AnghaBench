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
struct inode {void* i_private; int /*<<< orphan*/  i_flags; } ;
struct dentry {int /*<<< orphan*/  d_parent; void* d_fsdata; int /*<<< orphan*/  d_sb; } ;
typedef  scalar_t__ debugfs_automount_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  S_AUTOMOUNT ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 struct dentry* FUNC10 (char const*,struct dentry*) ; 
 scalar_t__ FUNC11 (int) ; 

struct dentry *FUNC12(const char *name,
					struct dentry *parent,
					debugfs_automount_t f,
					void *data)
{
	struct dentry *dentry = FUNC10(name, parent);
	struct inode *inode;

	if (FUNC0(dentry))
		return dentry;

	inode = FUNC3(dentry->d_sb);
	if (FUNC11(!inode)) {
		FUNC9("out of free dentries, can not create automount '%s'\n",
		       name);
		return FUNC5(dentry);
	}

	FUNC8(inode);
	inode->i_flags |= S_AUTOMOUNT;
	inode->i_private = data;
	dentry->d_fsdata = (void *)f;
	/* directory inodes start off with i_nlink == 2 (for "." entry) */
	FUNC7(inode);
	FUNC2(dentry, inode);
	FUNC7(FUNC1(dentry->d_parent));
	FUNC6(FUNC1(dentry->d_parent), dentry);
	return FUNC4(dentry);
}