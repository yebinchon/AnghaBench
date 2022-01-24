#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct path {struct dentry* dentry; } ;
struct kstat {int attributes_mask; int attributes; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  btime; int /*<<< orphan*/  result_mask; int /*<<< orphan*/  ino; int /*<<< orphan*/  blksize; } ;
struct inode {TYPE_1__* i_mapping; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct cifs_tcon {int /*<<< orphan*/  unix_ext; } ;
struct cifs_sb_info {int mnt_cifs_flags; int /*<<< orphan*/  bsize; } ;
struct TYPE_6__ {int cifsAttrs; scalar_t__ createtime; int /*<<< orphan*/  uniqueid; } ;
struct TYPE_5__ {scalar_t__ nrpages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int CIFS_MOUNT_CIFS_ACL ; 
 int CIFS_MOUNT_MULTIUSER ; 
 int CIFS_MOUNT_OVERR_GID ; 
 int CIFS_MOUNT_OVERR_UID ; 
 struct cifs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int FILE_ATTRIBUTE_COMPRESSED ; 
 int FILE_ATTRIBUTE_ENCRYPTED ; 
 int STATX_ATTR_COMPRESSED ; 
 int STATX_ATTR_ENCRYPTED ; 
 int /*<<< orphan*/  STATX_BTIME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dentry*) ; 
 struct cifs_tcon* FUNC5 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct inode* FUNC9 (struct dentry*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 

int FUNC13(const struct path *path, struct kstat *stat,
		 u32 request_mask, unsigned int flags)
{
	struct dentry *dentry = path->dentry;
	struct cifs_sb_info *cifs_sb = FUNC2(dentry->d_sb);
	struct cifs_tcon *tcon = FUNC5(cifs_sb);
	struct inode *inode = FUNC9(dentry);
	int rc;

	/*
	 * We need to be sure that all dirty pages are written and the server
	 * has actual ctime, mtime and file length.
	 */
	if (!FUNC0(FUNC1(inode)) && inode->i_mapping &&
	    inode->i_mapping->nrpages != 0) {
		rc = FUNC10(inode->i_mapping);
		if (rc) {
			FUNC12(inode->i_mapping, rc);
			return rc;
		}
	}

	rc = FUNC4(dentry);
	if (rc)
		return rc;

	FUNC11(inode, stat);
	stat->blksize = cifs_sb->bsize;
	stat->ino = FUNC1(inode)->uniqueid;

	/* old CIFS Unix Extensions doesn't return create time */
	if (FUNC1(inode)->createtime) {
		stat->result_mask |= STATX_BTIME;
		stat->btime =
		      FUNC3(FUNC6(FUNC1(inode)->createtime));
	}

	stat->attributes_mask |= (STATX_ATTR_COMPRESSED | STATX_ATTR_ENCRYPTED);
	if (FUNC1(inode)->cifsAttrs & FILE_ATTRIBUTE_COMPRESSED)
		stat->attributes |= STATX_ATTR_COMPRESSED;
	if (FUNC1(inode)->cifsAttrs & FILE_ATTRIBUTE_ENCRYPTED)
		stat->attributes |= STATX_ATTR_ENCRYPTED;

	/*
	 * If on a multiuser mount without unix extensions or cifsacl being
	 * enabled, and the admin hasn't overridden them, set the ownership
	 * to the fsuid/fsgid of the current process.
	 */
	if ((cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MULTIUSER) &&
	    !(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_CIFS_ACL) &&
	    !tcon->unix_ext) {
		if (!(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_OVERR_UID))
			stat->uid = FUNC8();
		if (!(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_OVERR_GID))
			stat->gid = FUNC7();
	}
	return rc;
}