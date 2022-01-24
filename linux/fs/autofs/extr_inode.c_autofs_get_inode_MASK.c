#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
struct super_block {scalar_t__ s_root; } ;
struct inode {int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  autofs_dir_inode_operations ; 
 int /*<<< orphan*/  autofs_dir_operations ; 
 int /*<<< orphan*/  autofs_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 TYPE_1__* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct inode* FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int) ; 

struct inode *FUNC8(struct super_block *sb, umode_t mode)
{
	struct inode *inode = FUNC6(sb);

	if (inode == NULL)
		return NULL;

	inode->i_mode = mode;
	if (sb->s_root) {
		inode->i_uid = FUNC4(sb->s_root)->i_uid;
		inode->i_gid = FUNC4(sb->s_root)->i_gid;
	}
	inode->i_atime = inode->i_mtime = inode->i_ctime = FUNC3(inode);
	inode->i_ino = FUNC5();

	if (FUNC0(mode)) {
		FUNC7(inode, 2);
		inode->i_op = &autofs_dir_inode_operations;
		inode->i_fop = &autofs_dir_operations;
	} else if (FUNC1(mode)) {
		inode->i_op = &autofs_symlink_inode_operations;
	} else
		FUNC2(1);

	return inode;
}