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
struct inode {void* i_private; struct file_operations const* i_fop; } ;
struct file_operations {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC1 (struct dentry*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct dentry *root, char const *name,
	const struct file_operations *fops, int perm, void *priv)
{
	struct dentry *dentry;
	struct inode *inode;

	if (!root)
		return -ENOMEM;

	FUNC4(FUNC2(root));
	dentry = FUNC1(root, name);
	if (!dentry) {
		FUNC5(FUNC2(root));
		return -ENOMEM;
	}
	inode = FUNC6(root->d_sb, S_IFREG | perm);
	if (!inode) {
		FUNC3(dentry);
		FUNC5(FUNC2(root));
		return -ENOMEM;
	}
	inode->i_fop = fops;
	inode->i_private = priv;
	FUNC0(dentry, inode);
	FUNC5(FUNC2(root));
	return 0;
}