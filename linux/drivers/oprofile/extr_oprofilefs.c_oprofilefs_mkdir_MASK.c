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
struct inode {int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC1 (struct dentry*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 
 int /*<<< orphan*/  simple_dir_operations ; 

struct dentry *FUNC7(struct dentry *parent, char const *name)
{
	struct dentry *dentry;
	struct inode *inode;

	FUNC4(FUNC2(parent));
	dentry = FUNC1(parent, name);
	if (!dentry) {
		FUNC5(FUNC2(parent));
		return NULL;
	}
	inode = FUNC6(parent->d_sb, S_IFDIR | 0755);
	if (!inode) {
		FUNC3(dentry);
		FUNC5(FUNC2(parent));
		return NULL;
	}
	inode->i_op = &simple_dir_inode_operations;
	inode->i_fop = &simple_dir_operations;
	FUNC0(dentry, inode);
	FUNC5(FUNC2(parent));
	return dentry;
}