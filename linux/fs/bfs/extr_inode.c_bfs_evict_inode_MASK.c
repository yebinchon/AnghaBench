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
struct inode {unsigned long i_ino; scalar_t__ i_nlink; int /*<<< orphan*/  i_data; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
struct bfs_sb_info {scalar_t__ si_lf_eblk; int /*<<< orphan*/  bfs_lock; int /*<<< orphan*/  si_imap; int /*<<< orphan*/  si_freei; int /*<<< orphan*/  si_freeb; } ;
struct bfs_inode_info {scalar_t__ i_sblock; scalar_t__ i_eblock; scalar_t__ i_dsk_ino; } ;
struct bfs_inode {int dummy; } ;

/* Variables and functions */
 struct bfs_inode_info* FUNC0 (struct inode*) ; 
 struct bfs_sb_info* FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (struct bfs_inode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned long) ; 
 struct bfs_inode* FUNC8 (struct super_block*,unsigned long,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct bfs_inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct inode *inode)
{
	unsigned long ino = inode->i_ino;
	struct bfs_inode *di;
	struct buffer_head *bh;
	struct super_block *s = inode->i_sb;
	struct bfs_sb_info *info = FUNC1(s);
	struct bfs_inode_info *bi = FUNC0(inode);

	FUNC7("ino=%08lx\n", ino);

	FUNC14(&inode->i_data);
	FUNC9(inode);
	FUNC6(inode);

	if (inode->i_nlink)
		return;

	di = FUNC8(s, inode->i_ino, &bh);
	if (FUNC2(di))
		return;

	FUNC12(&info->bfs_lock);
	/* clear on-disk inode */
	FUNC11(di, 0, sizeof(struct bfs_inode));
	FUNC10(bh);
	FUNC4(bh);

	if (bi->i_dsk_ino) {
		if (bi->i_sblock)
			info->si_freeb += bi->i_eblock + 1 - bi->i_sblock;
		info->si_freei++;
		FUNC5(ino, info->si_imap);
		FUNC3("evict_inode", s);
	}

	/*
	 * If this was the last file, make the previous block
	 * "last block of the last file" even if there is no
	 * real file there, saves us 1 gap.
	 */
	if (info->si_lf_eblk == bi->i_eblock)
		info->si_lf_eblk = bi->i_sblock - 1;
	FUNC13(&info->bfs_lock);
}