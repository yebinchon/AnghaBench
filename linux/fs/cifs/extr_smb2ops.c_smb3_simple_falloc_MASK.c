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
struct inode {int dummy; } ;
struct file {struct cifsFileInfo* private_data; } ;
struct cifs_tcon {TYPE_2__* ses; int /*<<< orphan*/  tid; } ;
struct cifsInodeInfo {int cifsAttrs; } ;
struct TYPE_3__ {int /*<<< orphan*/  persistent_fid; int /*<<< orphan*/  volatile_fid; } ;
struct cifsFileInfo {TYPE_1__ fid; int /*<<< orphan*/  pid; int /*<<< orphan*/  dentry; } ;
typedef  scalar_t__ loff_t ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_4__ {int /*<<< orphan*/  Suid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cifsInodeInfo*) ; 
 struct cifsInodeInfo* FUNC1 (struct inode*) ; 
 long EOPNOTSUPP ; 
 int FILE_ATTRIBUTE_SPARSE_FILE ; 
 long FUNC2 (unsigned int,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 unsigned int FUNC6 () ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,struct cifs_tcon*,struct cifsFileInfo*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,long) ; 

__attribute__((used)) static long FUNC12(struct file *file, struct cifs_tcon *tcon,
			    loff_t off, loff_t len, bool keep_size)
{
	struct inode *inode;
	struct cifsInodeInfo *cifsi;
	struct cifsFileInfo *cfile = file->private_data;
	long rc = -EOPNOTSUPP;
	unsigned int xid;
	__le64 eof;

	xid = FUNC6();

	inode = FUNC4(cfile->dentry);
	cifsi = FUNC1(inode);

	FUNC10(xid, cfile->fid.persistent_fid, tcon->tid,
				tcon->ses->Suid, off, len);
	/* if file not oplocked can't be sure whether asking to extend size */
	if (!FUNC0(cifsi))
		if (keep_size == false) {
			FUNC11(xid, cfile->fid.persistent_fid,
				tcon->tid, tcon->ses->Suid, off, len, rc);
			FUNC5(xid);
			return rc;
		}

	/*
	 * Files are non-sparse by default so falloc may be a no-op
	 * Must check if file sparse. If not sparse, and not extending
	 * then no need to do anything since file already allocated
	 */
	if ((cifsi->cifsAttrs & FILE_ATTRIBUTE_SPARSE_FILE) == 0) {
		if (keep_size == true)
			rc = 0;
		/* check if extending file */
		else if (FUNC7(inode) >= off + len)
			/* not extending file and already not sparse */
			rc = 0;
		/* BB: in future add else clause to extend file */
		else
			rc = -EOPNOTSUPP;
		if (rc)
			FUNC11(xid, cfile->fid.persistent_fid,
				tcon->tid, tcon->ses->Suid, off, len, rc);
		else
			FUNC9(xid, cfile->fid.persistent_fid,
				tcon->tid, tcon->ses->Suid, off, len);
		FUNC5(xid);
		return rc;
	}

	if ((keep_size == true) || (FUNC7(inode) >= off + len)) {
		/*
		 * Check if falloc starts within first few pages of file
		 * and ends within a few pages of the end of file to
		 * ensure that most of file is being forced to be
		 * fallocated now. If so then setting whole file sparse
		 * ie potentially making a few extra pages at the beginning
		 * or end of the file non-sparse via set_sparse is harmless.
		 */
		if ((off > 8192) || (off + len + 8192 < FUNC7(inode))) {
			rc = -EOPNOTSUPP;
			FUNC11(xid, cfile->fid.persistent_fid,
				tcon->tid, tcon->ses->Suid, off, len, rc);
			FUNC5(xid);
			return rc;
		}

		FUNC8(xid, tcon, cfile, inode, false);
		rc = 0;
	} else {
		FUNC8(xid, tcon, cfile, inode, false);
		rc = 0;
		if (FUNC7(inode) < off + len) {
			eof = FUNC3(off + len);
			rc = FUNC2(xid, tcon, cfile->fid.persistent_fid,
					  cfile->fid.volatile_fid, cfile->pid,
					  &eof);
		}
	}

	if (rc)
		FUNC11(xid, cfile->fid.persistent_fid, tcon->tid,
				tcon->ses->Suid, off, len, rc);
	else
		FUNC9(xid, cfile->fid.persistent_fid, tcon->tid,
				tcon->ses->Suid, off, len);

	FUNC5(xid);
	return rc;
}