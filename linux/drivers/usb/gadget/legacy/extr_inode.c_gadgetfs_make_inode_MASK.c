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
struct super_block {int dummy; } ;
struct inode {int i_mode; struct file_operations const* i_fop; void* i_private; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_ino; } ;
struct file_operations {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  default_gid ; 
 int /*<<< orphan*/  default_uid ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct inode* FUNC4 (struct super_block*) ; 

__attribute__((used)) static struct inode *
FUNC5 (struct super_block *sb,
		void *data, const struct file_operations *fops,
		int mode)
{
	struct inode *inode = FUNC4 (sb);

	if (inode) {
		inode->i_ino = FUNC1();
		inode->i_mode = mode;
		inode->i_uid = FUNC3(&init_user_ns, default_uid);
		inode->i_gid = FUNC2(&init_user_ns, default_gid);
		inode->i_atime = inode->i_mtime = inode->i_ctime
				= FUNC0(inode);
		inode->i_private = data;
		inode->i_fop = fops;
	}
	return inode;
}