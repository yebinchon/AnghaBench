#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kiocb {TYPE_2__* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  Capability; } ;
struct cifs_tcon {TYPE_1__ fsUnixInfo; int /*<<< orphan*/  ses; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifsInodeInfo {scalar_t__ oplock; } ;
struct cifsFileInfo {int /*<<< orphan*/  tlink; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {scalar_t__ private_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cifsInodeInfo*) ; 
 scalar_t__ FUNC1 (struct cifsInodeInfo*) ; 
 struct cifsInodeInfo* FUNC2 (struct inode*) ; 
 int CIFS_MOUNT_NOPOSIXBRL ; 
 struct cifs_sb_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int CIFS_UNIX_FCNTL_CAP ; 
 int /*<<< orphan*/  FYI ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct inode*) ; 
 scalar_t__ FUNC6 (struct cifsInodeInfo*) ; 
 int /*<<< orphan*/  FUNC7 (struct cifsInodeInfo*) ; 
 scalar_t__ FUNC8 (struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC9 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 struct inode* FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (struct kiocb*,struct iov_iter*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 struct cifs_tcon* FUNC14 (int /*<<< orphan*/ ) ; 

ssize_t
FUNC15(struct kiocb *iocb, struct iov_iter *from)
{
	struct inode *inode = FUNC11(iocb->ki_filp);
	struct cifsInodeInfo *cinode = FUNC2(inode);
	struct cifs_sb_info *cifs_sb = FUNC3(inode->i_sb);
	struct cifsFileInfo *cfile = (struct cifsFileInfo *)
						iocb->ki_filp->private_data;
	struct cifs_tcon *tcon = FUNC14(cfile->tlink);
	ssize_t written;

	written = FUNC6(cinode);
	if (written)
		return written;

	if (FUNC1(cinode)) {
		if (FUNC4(tcon->ses) &&
		(CIFS_UNIX_FCNTL_CAP & FUNC13(tcon->fsUnixInfo.Capability))
		  && ((cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NOPOSIXBRL) == 0)) {
			written = FUNC12(iocb, from);
			goto out;
		}
		written = FUNC9(iocb, from);
		goto out;
	}
	/*
	 * For non-oplocked files in strict cache mode we need to write the data
	 * to the server exactly from the pos to pos+len-1 rather than flush all
	 * affected pages because it may cause a error with mandatory locks on
	 * these pages but not on the region from pos to ppos+len-1.
	 */
	written = FUNC8(iocb, from);
	if (FUNC0(cinode)) {
		/*
		 * We have read level caching and we have just sent a write
		 * request to the server thus making data in the cache stale.
		 * Zap the cache and set oplock/lease level to NONE to avoid
		 * reading stale data from the cache. All subsequent read
		 * operations will read new data from the server.
		 */
		FUNC10(inode);
		FUNC5(FYI, "Set Oplock/Lease to NONE for inode=%p after write\n",
			 inode);
		cinode->oplock = 0;
	}
out:
	FUNC7(cinode);
	return written;
}