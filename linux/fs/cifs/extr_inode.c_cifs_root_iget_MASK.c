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
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_mode; } ;
struct cifs_tcon {int unix_ext; scalar_t__ pipe; int /*<<< orphan*/  resource_id; } ;
struct cifs_sb_info {int mnt_cifs_flags; int /*<<< orphan*/  mnt_gid; int /*<<< orphan*/  mnt_uid; scalar_t__ prepath; } ;
struct TYPE_2__ {int /*<<< orphan*/  uniqueid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cifs_sb_info*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int CIFS_MOUNT_USE_PREFIX_PATH ; 
 struct cifs_sb_info* FUNC2 (struct super_block*) ; 
 long ENOMEM ; 
 long EOPNOTSUPP ; 
 struct inode* FUNC3 (long) ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 long FUNC5 (struct inode**,char*,int /*<<< orphan*/ *,struct super_block*,unsigned int,int /*<<< orphan*/ *) ; 
 long FUNC6 (struct inode**,char*,struct super_block*,unsigned int) ; 
 int /*<<< orphan*/  cifs_ipc_inode_ops ; 
 struct cifs_tcon* FUNC7 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 unsigned int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int) ; 
 int /*<<< orphan*/  simple_dir_operations ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (scalar_t__) ; 

struct inode *FUNC20(struct super_block *sb)
{
	unsigned int xid;
	struct cifs_sb_info *cifs_sb = FUNC2(sb);
	struct inode *inode = NULL;
	long rc;
	struct cifs_tcon *tcon = FUNC7(cifs_sb);
	char *path = NULL;
	int len;

	if ((cifs_sb->mnt_cifs_flags & CIFS_MOUNT_USE_PREFIX_PATH)
	    && cifs_sb->prepath) {
		len = FUNC19(cifs_sb->prepath);
		path = FUNC14(len + 2 /* leading sep + null */, GFP_KERNEL);
		if (path == NULL)
			return FUNC3(-ENOMEM);
		path[0] = '/';
		FUNC15(path+1, cifs_sb->prepath, len);
	} else {
		path = FUNC13("", GFP_KERNEL);
		if (path == NULL)
			return FUNC3(-ENOMEM);
	}

	xid = FUNC10();
	if (tcon->unix_ext) {
		rc = FUNC6(&inode, path, sb, xid);
		/* some servers mistakenly claim POSIX support */
		if (rc != -EOPNOTSUPP)
			goto iget_no_retry;
		FUNC4(VFS, "server does not support POSIX extensions");
		tcon->unix_ext = false;
	}

	FUNC8(path, FUNC0(cifs_sb));
	rc = FUNC5(&inode, path, NULL, sb, xid, NULL);

iget_no_retry:
	if (!inode) {
		inode = FUNC3(rc);
		goto out;
	}

#ifdef CONFIG_CIFS_FSCACHE
	/* populate tcon->resource_id */
	tcon->resource_id = CIFS_I(inode)->uniqueid;
#endif

	if (rc && tcon->pipe) {
		FUNC4(FYI, "ipc connection - fake read inode\n");
		FUNC17(&inode->i_lock);
		inode->i_mode |= S_IFDIR;
		FUNC16(inode, 2);
		inode->i_op = &cifs_ipc_inode_ops;
		inode->i_fop = &simple_dir_operations;
		inode->i_uid = cifs_sb->mnt_uid;
		inode->i_gid = cifs_sb->mnt_gid;
		FUNC18(&inode->i_lock);
	} else if (rc) {
		FUNC11(inode);
		inode = FUNC3(rc);
	}

out:
	FUNC12(path);
	FUNC9(xid);
	return inode;
}