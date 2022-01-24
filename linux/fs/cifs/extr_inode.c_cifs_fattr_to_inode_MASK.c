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
struct inode {int i_state; int i_blocks; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_sb; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifs_fattr {int cf_flags; int cf_bytes; int /*<<< orphan*/  cf_eof; int /*<<< orphan*/  cf_cifsattrs; int /*<<< orphan*/  cf_mode; int /*<<< orphan*/  cf_gid; int /*<<< orphan*/  cf_uid; int /*<<< orphan*/  cf_rdev; int /*<<< orphan*/  cf_ctime; int /*<<< orphan*/  cf_mtime; int /*<<< orphan*/  cf_atime; } ;
struct cifsInodeInfo {int /*<<< orphan*/  server_eof; int /*<<< orphan*/  flags; scalar_t__ time; int /*<<< orphan*/  cifsAttrs; } ;

/* Variables and functions */
 int CIFS_FATTR_DELETE_PENDING ; 
 int CIFS_FATTR_DFS_REFERRAL ; 
 int CIFS_FATTR_NEED_REVAL ; 
 struct cifsInodeInfo* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  CIFS_INO_DELETE_PENDING ; 
 int CIFS_MOUNT_DYNPERM ; 
 struct cifs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int I_NEW ; 
 int /*<<< orphan*/  S_AUTOMOUNT ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct cifs_fattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct cifs_fattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct cifsInodeInfo*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC12(struct inode *inode, struct cifs_fattr *fattr)
{
	struct cifsInodeInfo *cifs_i = FUNC0(inode);
	struct cifs_sb_info *cifs_sb = FUNC1(inode->i_sb);

	FUNC3(inode, fattr);

	FUNC9(&inode->i_lock);
	/* we do not want atime to be less than mtime, it broke some apps */
	if (FUNC11(&fattr->cf_atime, &fattr->cf_mtime))
		inode->i_atime = fattr->cf_mtime;
	else
		inode->i_atime = fattr->cf_atime;
	inode->i_mtime = fattr->cf_mtime;
	inode->i_ctime = fattr->cf_ctime;
	inode->i_rdev = fattr->cf_rdev;
	FUNC2(inode, fattr);
	inode->i_uid = fattr->cf_uid;
	inode->i_gid = fattr->cf_gid;

	/* if dynperm is set, don't clobber existing mode */
	if (inode->i_state & I_NEW ||
	    !(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_DYNPERM))
		inode->i_mode = fattr->cf_mode;

	cifs_i->cifsAttrs = fattr->cf_cifsattrs;

	if (fattr->cf_flags & CIFS_FATTR_NEED_REVAL)
		cifs_i->time = 0;
	else
		cifs_i->time = jiffies;

	if (fattr->cf_flags & CIFS_FATTR_DELETE_PENDING)
		FUNC8(CIFS_INO_DELETE_PENDING, &cifs_i->flags);
	else
		FUNC5(CIFS_INO_DELETE_PENDING, &cifs_i->flags);

	cifs_i->server_eof = fattr->cf_eof;
	/*
	 * Can't safely change the file size here if the client is writing to
	 * it due to potential races.
	 */
	if (FUNC7(cifs_i, fattr->cf_eof)) {
		FUNC6(inode, fattr->cf_eof);

		/*
		 * i_blocks is not related to (i_size / i_blksize),
		 * but instead 512 byte (2**9) size is required for
		 * calculating num blocks.
		 */
		inode->i_blocks = (512 - 1 + fattr->cf_bytes) >> 9;
	}
	FUNC10(&inode->i_lock);

	if (fattr->cf_flags & CIFS_FATTR_DFS_REFERRAL)
		inode->i_flags |= S_AUTOMOUNT;
	if (inode->i_state & I_NEW)
		FUNC4(inode);
}