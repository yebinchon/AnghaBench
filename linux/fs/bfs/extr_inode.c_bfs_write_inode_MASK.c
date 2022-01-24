#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u16 ;
struct writeback_control {scalar_t__ sync_mode; } ;
struct TYPE_7__ {unsigned long tv_sec; } ;
struct TYPE_6__ {unsigned long tv_sec; } ;
struct TYPE_5__ {unsigned long tv_sec; } ;
struct inode {unsigned long i_mode; unsigned long i_nlink; unsigned long i_size; TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct buffer_head {int dummy; } ;
struct bfs_sb_info {int /*<<< orphan*/  bfs_lock; } ;
struct bfs_inode {void* i_eoffset; void* i_eblock; void* i_sblock; void* i_ctime; void* i_mtime; void* i_atime; void* i_nlink; void* i_gid; void* i_uid; void* i_mode; int /*<<< orphan*/  i_ino; void* i_vtype; } ;
struct TYPE_8__ {unsigned long i_sblock; unsigned long i_eblock; } ;

/* Variables and functions */
 unsigned long BFS_BSIZE ; 
 TYPE_4__* FUNC0 (struct inode*) ; 
 unsigned int BFS_ROOT_INO ; 
 struct bfs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long BFS_VDIR ; 
 unsigned long BFS_VREG ; 
 int EIO ; 
 scalar_t__ FUNC2 (struct bfs_inode*) ; 
 int FUNC3 (struct bfs_inode*) ; 
 scalar_t__ WB_SYNC_ALL ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 void* FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned int) ; 
 struct bfs_inode* FUNC10 (int /*<<< orphan*/ ,unsigned int,struct buffer_head**) ; 
 unsigned long FUNC11 (struct inode*) ; 
 unsigned long FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC17(struct inode *inode, struct writeback_control *wbc)
{
	struct bfs_sb_info *info = FUNC1(inode->i_sb);
	unsigned int ino = (u16)inode->i_ino;
	unsigned long i_sblock;
	struct bfs_inode *di;
	struct buffer_head *bh;
	int err = 0;

	FUNC9("ino=%08x\n", ino);

	di = FUNC10(inode->i_sb, ino, &bh);
	if (FUNC2(di))
		return FUNC3(di);

	FUNC14(&info->bfs_lock);

	if (ino == BFS_ROOT_INO)
		di->i_vtype = FUNC8(BFS_VDIR);
	else
		di->i_vtype = FUNC8(BFS_VREG);

	di->i_ino = FUNC7(ino);
	di->i_mode = FUNC8(inode->i_mode);
	di->i_uid = FUNC8(FUNC12(inode));
	di->i_gid = FUNC8(FUNC11(inode));
	di->i_nlink = FUNC8(inode->i_nlink);
	di->i_atime = FUNC8(inode->i_atime.tv_sec);
	di->i_mtime = FUNC8(inode->i_mtime.tv_sec);
	di->i_ctime = FUNC8(inode->i_ctime.tv_sec);
	i_sblock = FUNC0(inode)->i_sblock;
	di->i_sblock = FUNC8(i_sblock);
	di->i_eblock = FUNC8(FUNC0(inode)->i_eblock);
	di->i_eoffset = FUNC8(i_sblock * BFS_BSIZE + inode->i_size - 1);

	FUNC13(bh);
	if (wbc->sync_mode == WB_SYNC_ALL) {
		FUNC16(bh);
		if (FUNC5(bh) && !FUNC6(bh))
			err = -EIO;
	}
	FUNC4(bh);
	FUNC15(&info->bfs_lock);
	return err;
}