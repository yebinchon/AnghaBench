#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
struct super_block {int dummy; } ;
struct inode {unsigned long i_ino; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; scalar_t__ i_blocks; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; struct super_block* i_sb; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct bfs_sb_info {int si_lasti; int /*<<< orphan*/  bfs_lock; int /*<<< orphan*/  si_freei; int /*<<< orphan*/  si_imap; } ;
struct TYPE_4__ {unsigned long i_dsk_ino; scalar_t__ i_eblock; scalar_t__ i_sblock; } ;
struct TYPE_3__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 struct bfs_sb_info* FUNC1 (struct super_block*) ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  bfs_aops ; 
 int /*<<< orphan*/  FUNC3 (char*,struct super_block*) ; 
 int /*<<< orphan*/  bfs_file_inops ; 
 int /*<<< orphan*/  bfs_file_operations ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC14 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct inode *dir, struct dentry *dentry, umode_t mode,
						bool excl)
{
	int err;
	struct inode *inode;
	struct super_block *s = dir->i_sb;
	struct bfs_sb_info *info = FUNC1(s);
	unsigned long ino;

	inode = FUNC14(s);
	if (!inode)
		return -ENOMEM;
	FUNC12(&info->bfs_lock);
	ino = FUNC6(info->si_imap, info->si_lasti + 1);
	if (ino > info->si_lasti) {
		FUNC13(&info->bfs_lock);
		FUNC10(inode);
		return -ENOSPC;
	}
	FUNC15(ino, info->si_imap);
	info->si_freei--;
	FUNC8(inode, dir, mode);
	inode->i_mtime = inode->i_atime = inode->i_ctime = FUNC4(inode);
	inode->i_blocks = 0;
	inode->i_op = &bfs_file_inops;
	inode->i_fop = &bfs_file_operations;
	inode->i_mapping->a_ops = &bfs_aops;
	inode->i_ino = ino;
	FUNC0(inode)->i_dsk_ino = ino;
	FUNC0(inode)->i_sblock = 0;
	FUNC0(inode)->i_eblock = 0;
	FUNC9(inode);
        FUNC11(inode);
	FUNC3("create", s);

	err = FUNC2(dir, &dentry->d_name, inode->i_ino);
	if (err) {
		FUNC7(inode);
		FUNC13(&info->bfs_lock);
		FUNC10(inode);
		return err;
	}
	FUNC13(&info->bfs_lock);
	FUNC5(dentry, inode);
	return 0;
}