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
typedef  int umode_t ;
struct inode {int i_mode; struct file_operations const* i_fop; int /*<<< orphan*/ * i_op; void* i_private; } ;
struct file_operations {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_parent; void* d_fsdata; int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long DEBUGFS_FSDATA_IS_REAL_FOPS_BIT ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int S_IFMT ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  debugfs_file_inode_operations ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC6 (struct dentry*) ; 
 struct dentry* FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 struct dentry* FUNC10 (char const*,struct dentry*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static struct dentry *FUNC12(const char *name, umode_t mode,
				struct dentry *parent, void *data,
				const struct file_operations *proxy_fops,
				const struct file_operations *real_fops)
{
	struct dentry *dentry;
	struct inode *inode;

	if (!(mode & S_IFMT))
		mode |= S_IFREG;
	FUNC0(!FUNC2(mode));
	dentry = FUNC10(name, parent);

	if (FUNC1(dentry))
		return dentry;

	inode = FUNC5(dentry->d_sb);
	if (FUNC11(!inode)) {
		FUNC9("out of free dentries, can not create file '%s'\n",
		       name);
		return FUNC7(dentry);
	}

	inode->i_mode = mode;
	inode->i_private = data;

	inode->i_op = &debugfs_file_inode_operations;
	inode->i_fop = proxy_fops;
	dentry->d_fsdata = (void *)((unsigned long)real_fops |
				DEBUGFS_FSDATA_IS_REAL_FOPS_BIT);

	FUNC4(dentry, inode);
	FUNC8(FUNC3(dentry->d_parent), dentry);
	return FUNC6(dentry);
}