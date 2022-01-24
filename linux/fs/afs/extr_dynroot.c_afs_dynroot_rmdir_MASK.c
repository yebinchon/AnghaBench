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
struct dentry {int /*<<< orphan*/  d_inode; int /*<<< orphan*/ * d_fsdata; } ;
struct afs_net {struct super_block* dynroot_sb; } ;
struct afs_cell {int /*<<< orphan*/  name_len; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct dentry*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC9 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 

void FUNC10(struct afs_net *net, struct afs_cell *cell)
{
	struct super_block *sb = net->dynroot_sb;
	struct dentry *root, *subdir;

	if (!sb || FUNC4(&sb->s_active) == 0)
		return;

	root = sb->s_root;
	FUNC7(root->d_inode);

	/* Don't want to trigger a lookup call, which will re-add the cell */
	subdir = FUNC9(cell->name, root, cell->name_len);
	if (FUNC0(subdir)) {
		FUNC2("lookup %ld", FUNC1(subdir));
		goto no_dentry;
	}

	FUNC2("rmdir %pd %u", subdir, FUNC5(subdir));

	if (subdir->d_fsdata) {
		FUNC2("unpin %u", FUNC5(subdir));
		subdir->d_fsdata = NULL;
		FUNC6(subdir);
	}
	FUNC6(subdir);
no_dentry:
	FUNC8(root->d_inode);
	FUNC3("");
}