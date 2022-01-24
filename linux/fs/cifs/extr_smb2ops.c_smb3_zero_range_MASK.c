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
struct inode {int dummy; } ;
struct file_zero_data_information {void* BeyondFinalZero; void* FileOffset; } ;
struct file {struct cifsFileInfo* private_data; } ;
struct cifs_tcon {int /*<<< orphan*/  tid; struct cifs_ses* ses; } ;
struct cifs_ses {int /*<<< orphan*/  Suid; } ;
struct cifsInodeInfo {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  persistent_fid; int /*<<< orphan*/  volatile_fid; } ;
struct cifsFileInfo {TYPE_1__ fid; int /*<<< orphan*/  pid; int /*<<< orphan*/  dentry; } ;
typedef  scalar_t__ loff_t ;
typedef  void* __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cifsInodeInfo*) ; 
 struct cifsInodeInfo* FUNC1 (struct inode*) ; 
 long EOPNOTSUPP ; 
 int /*<<< orphan*/  FSCTL_SET_ZERO_DATA ; 
 int /*<<< orphan*/  FYI ; 
 long FUNC2 (unsigned int,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long FUNC3 (unsigned int,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 void* FUNC5 (scalar_t__) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 unsigned int FUNC8 () ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,long) ; 

__attribute__((used)) static long FUNC13(struct file *file, struct cifs_tcon *tcon,
			    loff_t offset, loff_t len, bool keep_size)
{
	struct cifs_ses *ses = tcon->ses;
	struct inode *inode;
	struct cifsInodeInfo *cifsi;
	struct cifsFileInfo *cfile = file->private_data;
	struct file_zero_data_information fsctl_buf;
	long rc;
	unsigned int xid;
	__le64 eof;

	xid = FUNC8();

	inode = FUNC6(cfile->dentry);
	cifsi = FUNC1(inode);

	FUNC11(xid, cfile->fid.persistent_fid, tcon->tid,
			      ses->Suid, offset, len);


	/* if file not oplocked can't be sure whether asking to extend size */
	if (!FUNC0(cifsi))
		if (keep_size == false) {
			rc = -EOPNOTSUPP;
			FUNC12(xid, cfile->fid.persistent_fid,
				tcon->tid, ses->Suid, offset, len, rc);
			FUNC7(xid);
			return rc;
		}

	FUNC4(FYI, "Offset %lld len %lld\n", offset, len);

	fsctl_buf.FileOffset = FUNC5(offset);
	fsctl_buf.BeyondFinalZero = FUNC5(offset + len);

	rc = FUNC2(xid, tcon, cfile->fid.persistent_fid,
			cfile->fid.volatile_fid, FSCTL_SET_ZERO_DATA, true,
			(char *)&fsctl_buf,
			sizeof(struct file_zero_data_information),
			0, NULL, NULL);
	if (rc)
		goto zero_range_exit;

	/*
	 * do we also need to change the size of the file?
	 */
	if (keep_size == false && FUNC9(inode) < offset + len) {
		eof = FUNC5(offset + len);
		rc = FUNC3(xid, tcon, cfile->fid.persistent_fid,
				  cfile->fid.volatile_fid, cfile->pid, &eof);
	}

 zero_range_exit:
	FUNC7(xid);
	if (rc)
		FUNC12(xid, cfile->fid.persistent_fid, tcon->tid,
			      ses->Suid, offset, len, rc);
	else
		FUNC10(xid, cfile->fid.persistent_fid, tcon->tid,
			      ses->Suid, offset, len);
	return rc;
}