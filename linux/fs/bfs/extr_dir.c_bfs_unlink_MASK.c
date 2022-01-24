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
struct inode {scalar_t__ i_ino; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; TYPE_1__* i_sb; int /*<<< orphan*/  i_nlink; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct buffer_head {int dummy; } ;
struct bfs_sb_info {int /*<<< orphan*/  bfs_lock; } ;
struct bfs_dirent {scalar_t__ ino; } ;
struct TYPE_2__ {char* s_id; } ;

/* Variables and functions */
 struct bfs_sb_info* FUNC0 (TYPE_1__*) ; 
 int ENOENT ; 
 struct buffer_head* FUNC1 (struct inode*,int /*<<< orphan*/ *,struct bfs_dirent**) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 

__attribute__((used)) static int FUNC13(struct inode *dir, struct dentry *dentry)
{
	int error = -ENOENT;
	struct inode *inode = FUNC4(dentry);
	struct buffer_head *bh;
	struct bfs_dirent *de;
	struct bfs_sb_info *info = FUNC0(inode->i_sb);

	FUNC9(&info->bfs_lock);
	bh = FUNC1(dir, &dentry->d_name, &de);
	if (!bh || (FUNC6(de->ino) != inode->i_ino))
		goto out_brelse;

	if (!inode->i_nlink) {
		FUNC11("unlinking non-existent file %s:%lu (nlink=%d)\n",
					inode->i_sb->s_id, inode->i_ino,
					inode->i_nlink);
		FUNC12(inode, 1);
	}
	de->ino = 0;
	FUNC7(bh, dir);
	dir->i_ctime = dir->i_mtime = FUNC3(dir);
	FUNC8(dir);
	inode->i_ctime = dir->i_ctime;
	FUNC5(inode);
	error = 0;

out_brelse:
	FUNC2(bh);
	FUNC10(&info->bfs_lock);
	return error;
}