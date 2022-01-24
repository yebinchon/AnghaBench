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
struct super_block {int /*<<< orphan*/  s_root; } ;
struct inode {int dummy; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int S_IFREG ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int default_perm ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct inode* FUNC3 (struct super_block*,void*,struct file_operations const*,int) ; 

__attribute__((used)) static struct dentry *
FUNC4 (struct super_block *sb, char const *name,
		void *data, const struct file_operations *fops)
{
	struct dentry	*dentry;
	struct inode	*inode;

	dentry = FUNC1(sb->s_root, name);
	if (!dentry)
		return NULL;

	inode = FUNC3 (sb, data, fops,
			S_IFREG | (default_perm & S_IRWXUGO));
	if (!inode) {
		FUNC2(dentry);
		return NULL;
	}
	FUNC0 (dentry, inode);
	return dentry;
}