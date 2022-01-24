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
struct object_info {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int EACCES ; 
 int ENOENT ; 
 struct inode* FUNC0 (int) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ *,struct object_info*) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ,struct object_info*) ; 
 struct dentry* FUNC3 (struct inode*,struct dentry*) ; 

__attribute__((used)) static struct dentry *
FUNC4(struct inode *dir, struct dentry *dentry, unsigned int flags)
{
	struct inode *inode = NULL;
	struct object_info obj;
	int error;

	error = FUNC1(dir, &dentry->d_name, &obj);
	if (error == 0) {
		/*
		 * This only returns NULL if get_empty_inode
		 * fails.
		 */
		inode = FUNC2(dir->i_sb, &obj);
		if (!inode)
			inode = FUNC0(-EACCES);
	} else if (error != -ENOENT) {
		inode = FUNC0(error);
	}
	return FUNC3(inode, dentry);
}