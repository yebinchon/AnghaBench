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
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct bfs_sb_info {int /*<<< orphan*/  bfs_lock; } ;

/* Variables and functions */
 struct bfs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct dentry *old, struct inode *dir,
						struct dentry *new)
{
	struct inode *inode = FUNC3(old);
	struct bfs_sb_info *info = FUNC0(inode->i_sb);
	int err;

	FUNC8(&info->bfs_lock);
	err = FUNC1(dir, &new->d_name, inode->i_ino);
	if (err) {
		FUNC9(&info->bfs_lock);
		return err;
	}
	FUNC6(inode);
	inode->i_ctime = FUNC2(inode);
	FUNC7(inode);
	FUNC5(inode);
	FUNC4(new, inode);
	FUNC9(&info->bfs_lock);
	return 0;
}