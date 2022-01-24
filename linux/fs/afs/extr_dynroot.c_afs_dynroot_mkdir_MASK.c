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
struct super_block {struct dentry* s_root; int /*<<< orphan*/  s_active; } ;
struct dentry {int /*<<< orphan*/  d_inode; void* d_fsdata; } ;
struct afs_net {struct super_block* dynroot_sb; } ;
struct afs_cell {int /*<<< orphan*/  name_len; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC5 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 

int FUNC6(struct afs_net *net, struct afs_cell *cell)
{
	struct super_block *sb = net->dynroot_sb;
	struct dentry *root, *subdir;
	int ret;

	if (!sb || FUNC2(&sb->s_active) == 0)
		return 0;

	/* Let the ->lookup op do the creation */
	root = sb->s_root;
	FUNC3(root->d_inode);
	subdir = FUNC5(cell->name, root, cell->name_len);
	if (FUNC0(subdir)) {
		ret = FUNC1(subdir);
		goto unlock;
	}

	/* Note that we're retaining an extra ref on the dentry */
	subdir->d_fsdata = (void *)1UL;
	ret = 0;
unlock:
	FUNC4(root->d_inode);
	return ret;
}