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
struct pts_mount_opts {int ptmxmode; } ;
struct pts_fs_info {struct dentry* ptmx_dentry; struct pts_mount_opts mount_opts; } ;
struct inode {int i_ino; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 struct pts_fs_info* FUNC0 (struct super_block*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int S_IFCHR ; 
 int /*<<< orphan*/  TTYAUX_MAJOR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC6 (struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC12 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static int FUNC14(struct super_block *sb)
{
	int mode;
	int rc = -ENOMEM;
	struct dentry *dentry;
	struct inode *inode;
	struct dentry *root = sb->s_root;
	struct pts_fs_info *fsi = FUNC0(sb);
	struct pts_mount_opts *opts = &fsi->mount_opts;
	kuid_t ptmx_uid = FUNC3();
	kgid_t ptmx_gid = FUNC2();

	FUNC10(FUNC7(root));

	/* If we have already created ptmx node, return */
	if (fsi->ptmx_dentry) {
		rc = 0;
		goto out;
	}

	dentry = FUNC6(root, "ptmx");
	if (!dentry) {
		FUNC13("Unable to alloc dentry for ptmx node\n");
		goto out;
	}

	/*
	 * Create a new 'ptmx' node in this mount of devpts.
	 */
	inode = FUNC12(sb);
	if (!inode) {
		FUNC13("Unable to alloc inode for ptmx node\n");
		FUNC8(dentry);
		goto out;
	}

	inode->i_ino = 2;
	inode->i_mtime = inode->i_atime = inode->i_ctime = FUNC4(inode);

	mode = S_IFCHR|opts->ptmxmode;
	FUNC9(inode, mode, FUNC1(TTYAUX_MAJOR, 2));
	inode->i_uid = ptmx_uid;
	inode->i_gid = ptmx_gid;

	FUNC5(dentry, inode);

	fsi->ptmx_dentry = dentry;
	rc = 0;
out:
	FUNC11(FUNC7(root));
	return rc;
}