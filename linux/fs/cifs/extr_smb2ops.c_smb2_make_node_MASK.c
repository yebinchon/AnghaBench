#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
struct win_dev {void* minor; void* major; int /*<<< orphan*/  type; } ;
struct kvec {int iov_len; int /*<<< orphan*/ * iov_base; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct cifs_tcon {TYPE_3__* ses; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifs_open_parms {int create_options; char* path; int reconnect; struct cifs_fid* fid; int /*<<< orphan*/  disposition; int /*<<< orphan*/  desired_access; struct cifs_sb_info* cifs_sb; struct cifs_tcon* tcon; } ;
struct cifs_io_parms {int length; scalar_t__ offset; struct cifs_tcon* tcon; int /*<<< orphan*/  pid; } ;
struct cifs_fid {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;
typedef  scalar_t__ __u32 ;
struct TYPE_8__ {int /*<<< orphan*/  tgid; } ;
struct TYPE_7__ {TYPE_2__* server; } ;
struct TYPE_6__ {TYPE_1__* ops; scalar_t__ oplocks; } ;
struct TYPE_5__ {int (* open ) (unsigned int,struct cifs_open_parms*,scalar_t__*,int /*<<< orphan*/ *) ;int (* sync_write ) (unsigned int,struct cifs_fid*,struct cifs_io_parms*,unsigned int*,struct kvec*,int) ;int /*<<< orphan*/  (* close ) (unsigned int,struct cifs_tcon*,struct cifs_fid*) ;} ;
typedef  int /*<<< orphan*/  FILE_ALL_INFO ;

/* Variables and functions */
 int CIFS_MOUNT_UNX_EMUL ; 
 struct cifs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int CREATE_NOT_DIR ; 
 int CREATE_OPEN_BACKUP_INTENT ; 
 int CREATE_OPTION_SPECIAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  FILE_CREATE ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ REQ_OPLOCK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC12 (unsigned int,struct cifs_open_parms*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC13 (unsigned int,struct cifs_fid*,struct cifs_io_parms*,unsigned int*,struct kvec*,int) ; 
 int FUNC14 (unsigned int,struct cifs_fid*,struct cifs_io_parms*,unsigned int*,struct kvec*,int) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int,struct cifs_tcon*,struct cifs_fid*) ; 

__attribute__((used)) static int
FUNC16(unsigned int xid, struct inode *inode,
	       struct dentry *dentry, struct cifs_tcon *tcon,
	       char *full_path, umode_t mode, dev_t dev)
{
	struct cifs_sb_info *cifs_sb = FUNC0(inode->i_sb);
	int rc = -EPERM;
	int create_options = CREATE_NOT_DIR | CREATE_OPTION_SPECIAL;
	FILE_ALL_INFO *buf = NULL;
	struct cifs_io_parms io_parms;
	__u32 oplock = 0;
	struct cifs_fid fid;
	struct cifs_open_parms oparms;
	unsigned int bytes_written;
	struct win_dev *pdev;
	struct kvec iov[2];

	/*
	 * Check if mounted with mount parm 'sfu' mount parm.
	 * SFU emulation should work with all servers, but only
	 * supports block and char device (no socket & fifo),
	 * and was used by default in earlier versions of Windows
	 */
	if (!(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_UNX_EMUL))
		goto out;

	/*
	 * TODO: Add ability to create instead via reparse point. Windows (e.g.
	 * their current NFS server) uses this approach to expose special files
	 * over SMB2/SMB3 and Samba will do this with SMB3.1.1 POSIX Extensions
	 */

	if (!FUNC4(mode) && !FUNC3(mode))
		goto out;

	FUNC6(FYI, "sfu compat create special file\n");

	buf = FUNC10(sizeof(FILE_ALL_INFO), GFP_KERNEL);
	if (buf == NULL) {
		rc = -ENOMEM;
		goto out;
	}

	if (FUNC5(cifs_sb))
		create_options |= CREATE_OPEN_BACKUP_INTENT;

	oparms.tcon = tcon;
	oparms.cifs_sb = cifs_sb;
	oparms.desired_access = GENERIC_WRITE;
	oparms.create_options = create_options;
	oparms.disposition = FILE_CREATE;
	oparms.path = full_path;
	oparms.fid = &fid;
	oparms.reconnect = false;

	if (tcon->ses->server->oplocks)
		oplock = REQ_OPLOCK;
	else
		oplock = 0;
	rc = tcon->ses->server->ops->open(xid, &oparms, &oplock, buf);
	if (rc)
		goto out;

	/*
	 * BB Do not bother to decode buf since no local inode yet to put
	 * timestamps in, but we can reuse it safely.
	 */

	pdev = (struct win_dev *)buf;
	io_parms.pid = current->tgid;
	io_parms.tcon = tcon;
	io_parms.offset = 0;
	io_parms.length = sizeof(struct win_dev);
	iov[1].iov_base = buf;
	iov[1].iov_len = sizeof(struct win_dev);
	if (FUNC4(mode)) {
		FUNC11(pdev->type, "IntxCHR", 8);
		pdev->major = FUNC7(FUNC1(dev));
		pdev->minor = FUNC7(FUNC2(dev));
		rc = tcon->ses->server->ops->sync_write(xid, &fid, &io_parms,
							&bytes_written, iov, 1);
	} else if (FUNC3(mode)) {
		FUNC11(pdev->type, "IntxBLK", 8);
		pdev->major = FUNC7(FUNC1(dev));
		pdev->minor = FUNC7(FUNC2(dev));
		rc = tcon->ses->server->ops->sync_write(xid, &fid, &io_parms,
							&bytes_written, iov, 1);
	}
	tcon->ses->server->ops->close(xid, tcon, &fid);
	FUNC8(dentry);

	/* FIXME: add code here to set EAs */
out:
	FUNC9(buf);
	return rc;
}