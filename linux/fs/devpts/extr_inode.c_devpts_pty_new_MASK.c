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
struct super_block {struct dentry* s_root; } ;
struct pts_mount_opts {int mode; int /*<<< orphan*/  gid; scalar_t__ setgid; int /*<<< orphan*/  uid; scalar_t__ setuid; } ;
struct pts_fs_info {struct pts_mount_opts mount_opts; struct super_block* sb; } ;
struct inode {int i_ino; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct dentry {void* d_fsdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int S_IFCHR ; 
 int /*<<< orphan*/  UNIX98_PTY_SLAVE_MAJOR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC6 (struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 struct inode* FUNC11 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 

struct dentry *FUNC13(struct pts_fs_info *fsi, int index, void *priv)
{
	struct dentry *dentry;
	struct super_block *sb = fsi->sb;
	struct inode *inode;
	struct dentry *root;
	struct pts_mount_opts *opts;
	char s[12];

	root = sb->s_root;
	opts = &fsi->mount_opts;

	inode = FUNC11(sb);
	if (!inode)
		return FUNC0(-ENOMEM);

	inode->i_ino = index + 3;
	inode->i_uid = opts->setuid ? opts->uid : FUNC3();
	inode->i_gid = opts->setgid ? opts->gid : FUNC2();
	inode->i_mtime = inode->i_atime = inode->i_ctime = FUNC4(inode);
	FUNC9(inode, S_IFCHR|opts->mode, FUNC1(UNIX98_PTY_SLAVE_MAJOR, index));

	FUNC12(s, "%d", index);

	dentry = FUNC6(root, s);
	if (dentry) {
		dentry->d_fsdata = priv;
		FUNC5(dentry, inode);
		FUNC8(FUNC7(root), dentry);
	} else {
		FUNC10(inode);
		dentry = FUNC0(-ENOMEM);
	}

	return dentry;
}