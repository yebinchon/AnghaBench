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
struct inode {scalar_t__ i_ino; void* i_ctime; void* i_mtime; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct buffer_head {int dummy; } ;
struct bfs_sb_info {int /*<<< orphan*/  bfs_lock; } ;
struct bfs_dirent {scalar_t__ ino; } ;

/* Variables and functions */
 struct bfs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOENT ; 
 int EPERM ; 
 unsigned int RENAME_NOREPLACE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ *,scalar_t__) ; 
 struct buffer_head* FUNC3 (struct inode*,int /*<<< orphan*/ *,struct bfs_dirent**) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 void* FUNC5 (struct inode*) ; 
 struct inode* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct inode *old_dir, struct dentry *old_dentry,
		      struct inode *new_dir, struct dentry *new_dentry,
		      unsigned int flags)
{
	struct inode *old_inode, *new_inode;
	struct buffer_head *old_bh, *new_bh;
	struct bfs_dirent *old_de, *new_de;
	struct bfs_sb_info *info;
	int error = -ENOENT;

	if (flags & ~RENAME_NOREPLACE)
		return -EINVAL;

	old_bh = new_bh = NULL;
	old_inode = FUNC6(old_dentry);
	if (FUNC1(old_inode->i_mode))
		return -EINVAL;

	info = FUNC0(old_inode->i_sb);

	FUNC11(&info->bfs_lock);
	old_bh = FUNC3(old_dir, &old_dentry->d_name, &old_de);

	if (!old_bh || (FUNC8(old_de->ino) != old_inode->i_ino))
		goto end_rename;

	error = -EPERM;
	new_inode = FUNC6(new_dentry);
	new_bh = FUNC3(new_dir, &new_dentry->d_name, &new_de);

	if (new_bh && !new_inode) {
		FUNC4(new_bh);
		new_bh = NULL;
	}
	if (!new_bh) {
		error = FUNC2(new_dir, &new_dentry->d_name,
					old_inode->i_ino);
		if (error)
			goto end_rename;
	}
	old_de->ino = 0;
	old_dir->i_ctime = old_dir->i_mtime = FUNC5(old_dir);
	FUNC10(old_dir);
	if (new_inode) {
		new_inode->i_ctime = FUNC5(new_inode);
		FUNC7(new_inode);
	}
	FUNC9(old_bh, old_dir);
	error = 0;

end_rename:
	FUNC12(&info->bfs_lock);
	FUNC4(old_bh);
	FUNC4(new_bh);
	return error;
}