#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct kiocb {int /*<<< orphan*/  ki_pos; TYPE_4__* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_6__ {int /*<<< orphan*/  Capability; } ;
struct cifs_tcon {TYPE_5__* ses; TYPE_1__ fsUnixInfo; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifsInodeInfo {int /*<<< orphan*/  lock_sem; } ;
struct cifsFileInfo {int /*<<< orphan*/  tlink; } ;
typedef  int ssize_t ;
struct TYPE_10__ {TYPE_3__* server; } ;
struct TYPE_9__ {scalar_t__ private_data; } ;
struct TYPE_8__ {TYPE_2__* vals; } ;
struct TYPE_7__ {int /*<<< orphan*/  shared_lock_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cifsInodeInfo*) ; 
 struct cifsInodeInfo* FUNC1 (struct inode*) ; 
 int CIFS_MOUNT_NOPOSIXBRL ; 
 int /*<<< orphan*/  CIFS_READ_OP ; 
 struct cifs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int CIFS_UNIX_FCNTL_CAP ; 
 int EACCES ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (struct cifsFileInfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC7 (TYPE_4__*) ; 
 int FUNC8 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC9 (struct iov_iter*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 struct cifs_tcon* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

ssize_t
FUNC13(struct kiocb *iocb, struct iov_iter *to)
{
	struct inode *inode = FUNC7(iocb->ki_filp);
	struct cifsInodeInfo *cinode = FUNC1(inode);
	struct cifs_sb_info *cifs_sb = FUNC2(inode->i_sb);
	struct cifsFileInfo *cfile = (struct cifsFileInfo *)
						iocb->ki_filp->private_data;
	struct cifs_tcon *tcon = FUNC11(cfile->tlink);
	int rc = -EACCES;

	/*
	 * In strict cache mode we need to read from the server all the time
	 * if we don't have level II oplock because the server can delay mtime
	 * change - so we can't make a decision about inode invalidating.
	 * And we can also fail with pagereading if there are mandatory locks
	 * on pages affected by this read but not on the region from pos to
	 * pos+len-1.
	 */
	if (!FUNC0(cinode))
		return FUNC5(iocb, to);

	if (FUNC3(tcon->ses) &&
	    (CIFS_UNIX_FCNTL_CAP & FUNC10(tcon->fsUnixInfo.Capability)) &&
	    ((cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NOPOSIXBRL) == 0))
		return FUNC8(iocb, to);

	/*
	 * We need to hold the sem to be sure nobody modifies lock list
	 * with a brlock that prevents reading.
	 */
	FUNC6(&cinode->lock_sem);
	if (!FUNC4(cfile, iocb->ki_pos, FUNC9(to),
				     tcon->ses->server->vals->shared_lock_type,
				     0, NULL, CIFS_READ_OP))
		rc = FUNC8(iocb, to);
	FUNC12(&cinode->lock_sem);
	return rc;
}