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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
struct bfs_sb_info {int /*<<< orphan*/  bfs_lock; } ;
struct bfs_dirent {int /*<<< orphan*/  ino; } ;

/* Variables and functions */
 scalar_t__ BFS_NAMELEN ; 
 struct bfs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC2 (struct inode*,TYPE_1__*,struct bfs_dirent**) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 struct dentry* FUNC5 (struct inode*,struct dentry*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dentry *FUNC9(struct inode *dir, struct dentry *dentry,
						unsigned int flags)
{
	struct inode *inode = NULL;
	struct buffer_head *bh;
	struct bfs_dirent *de;
	struct bfs_sb_info *info = FUNC0(dir->i_sb);

	if (dentry->d_name.len > BFS_NAMELEN)
		return FUNC1(-ENAMETOOLONG);

	FUNC7(&info->bfs_lock);
	bh = FUNC2(dir, &dentry->d_name, &de);
	if (bh) {
		unsigned long ino = (unsigned long)FUNC6(de->ino);
		FUNC4(bh);
		inode = FUNC3(dir->i_sb, ino);
	}
	FUNC8(&info->bfs_lock);
	return FUNC5(inode, dentry);
}