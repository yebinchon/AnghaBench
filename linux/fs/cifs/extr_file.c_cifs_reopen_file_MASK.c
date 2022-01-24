#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mapping; } ;
struct TYPE_6__ {int /*<<< orphan*/  Capability; } ;
struct cifs_tcon {scalar_t__ unix_ext; TYPE_1__ fsUnixInfo; TYPE_5__* ses; } ;
struct cifs_sb_info {int /*<<< orphan*/  mnt_file_mode; } ;
struct cifs_open_parms {int reconnect; int desired_access; int create_options; int disposition; char* path; TYPE_3__* fid; struct cifs_sb_info* cifs_sb; struct cifs_tcon* tcon; } ;
struct cifsInodeInfo {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  netfid; } ;
struct cifsFileInfo {int invalidHandle; unsigned int f_flags; TYPE_3__ fid; int /*<<< orphan*/  fh_mutex; int /*<<< orphan*/  dentry; int /*<<< orphan*/  tlink; } ;
struct TCP_Server_Info {TYPE_2__* ops; scalar_t__ oplocks; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_9__ {struct TCP_Server_Info* server; } ;
struct TYPE_7__ {int (* open ) (unsigned int,struct cifs_open_parms*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* set_fid ) (struct cifsFileInfo*,TYPE_3__*,int /*<<< orphan*/ ) ;scalar_t__ (* is_read_op ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* get_lease_key ) (struct inode*,TYPE_3__*) ;} ;

/* Variables and functions */
 struct cifsInodeInfo* FUNC0 (struct inode*) ; 
 struct cifs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int CIFS_UNIX_POSIX_PATH_OPS_CAP ; 
 int CREATE_NOT_DIR ; 
 int CREATE_OPEN_BACKUP_INTENT ; 
 int EACCES ; 
 int ENOENT ; 
 int ENOMEM ; 
 int FILE_OPEN ; 
 int /*<<< orphan*/  FYI ; 
 unsigned int O_CREAT ; 
 unsigned int O_EXCL ; 
 unsigned int O_TRUNC ; 
 int /*<<< orphan*/  REQ_OPLOCK ; 
 scalar_t__ FUNC2 (struct cifs_sb_info*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 int FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (struct inode**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct inode**,char*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC9 (struct cifsInodeInfo*) ; 
 int FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct cifsFileInfo*) ; 
 struct inode* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int) ; 
 unsigned int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,TYPE_3__*) ; 
 int FUNC23 (unsigned int,struct cifs_open_parms*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC24 (unsigned int,struct cifs_open_parms*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct cifsFileInfo*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 struct cifs_tcon* FUNC27 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC28(struct cifsFileInfo *cfile, bool can_flush)
{
	int rc = -EACCES;
	unsigned int xid;
	__u32 oplock;
	struct cifs_sb_info *cifs_sb;
	struct cifs_tcon *tcon;
	struct TCP_Server_Info *server;
	struct cifsInodeInfo *cinode;
	struct inode *inode;
	char *full_path = NULL;
	int desired_access;
	int disposition = FILE_OPEN;
	int create_options = CREATE_NOT_DIR;
	struct cifs_open_parms oparms;

	xid = FUNC15();
	FUNC20(&cfile->fh_mutex);
	if (!cfile->invalidHandle) {
		FUNC21(&cfile->fh_mutex);
		rc = 0;
		FUNC14(xid);
		return rc;
	}

	inode = FUNC12(cfile->dentry);
	cifs_sb = FUNC1(inode->i_sb);
	tcon = FUNC27(cfile->tlink);
	server = tcon->ses->server;

	/*
	 * Can not grab rename sem here because various ops, including those
	 * that already have the rename sem can end up causing writepage to get
	 * called and if the server was down that means we end up here, and we
	 * can never tell if the caller already has the rename_sem.
	 */
	full_path = FUNC3(cfile->dentry);
	if (full_path == NULL) {
		rc = -ENOMEM;
		FUNC21(&cfile->fh_mutex);
		FUNC14(xid);
		return rc;
	}

	FUNC6(FYI, "inode = 0x%p file flags 0x%x for %s\n",
		 inode, cfile->f_flags, full_path);

	if (tcon->ses->server->oplocks)
		oplock = REQ_OPLOCK;
	else
		oplock = 0;

	if (tcon->unix_ext && FUNC4(tcon->ses) &&
	    (CIFS_UNIX_POSIX_PATH_OPS_CAP &
				FUNC18(tcon->fsUnixInfo.Capability))) {
		/*
		 * O_CREAT, O_EXCL and O_TRUNC already had their effect on the
		 * original open. Must mask them off for a reopen.
		 */
		unsigned int oflags = cfile->f_flags &
						~(O_CREAT | O_EXCL | O_TRUNC);

		rc = FUNC10(full_path, NULL, inode->i_sb,
				     cifs_sb->mnt_file_mode /* ignored */,
				     oflags, &oplock, &cfile->fid.netfid, xid);
		if (rc == 0) {
			FUNC6(FYI, "posix reopen succeeded\n");
			oparms.reconnect = true;
			goto reopen_success;
		}
		/*
		 * fallthrough to retry open the old way on errors, especially
		 * in the reconnect path it is important to retry hard
		 */
	}

	desired_access = FUNC5(cfile->f_flags);

	if (FUNC2(cifs_sb))
		create_options |= CREATE_OPEN_BACKUP_INTENT;

	if (server->ops->get_lease_key)
		server->ops->get_lease_key(inode, &cfile->fid);

	oparms.tcon = tcon;
	oparms.cifs_sb = cifs_sb;
	oparms.desired_access = desired_access;
	oparms.create_options = create_options;
	oparms.disposition = disposition;
	oparms.path = full_path;
	oparms.fid = &cfile->fid;
	oparms.reconnect = true;

	/*
	 * Can not refresh inode by passing in file_info buf to be returned by
	 * ops->open and then calling get_inode_info with returned buf since
	 * file might have write behind data that needs to be flushed and server
	 * version of file size can be stale. If we knew for sure that inode was
	 * not dirty locally we could do this.
	 */
	rc = server->ops->open(xid, &oparms, &oplock, NULL);
	if (rc == -ENOENT && oparms.reconnect == false) {
		/* durable handle timeout is expired - open the file again */
		rc = server->ops->open(xid, &oparms, &oplock, NULL);
		/* indicate that we need to relock the file */
		oparms.reconnect = true;
	}

	if (rc) {
		FUNC21(&cfile->fh_mutex);
		FUNC6(FYI, "cifs_reopen returned 0x%x\n", rc);
		FUNC6(FYI, "oplock: %d\n", oplock);
		goto reopen_error_exit;
	}

reopen_success:
	cfile->invalidHandle = false;
	FUNC21(&cfile->fh_mutex);
	cinode = FUNC0(inode);

	if (can_flush) {
		rc = FUNC13(inode->i_mapping);
		if (!FUNC16(rc))
			FUNC19(inode->i_mapping, rc);

		if (tcon->unix_ext)
			rc = FUNC8(&inode, full_path,
						      inode->i_sb, xid);
		else
			rc = FUNC7(&inode, full_path, NULL,
						 inode->i_sb, xid, NULL);
	}
	/*
	 * Else we are writing out data to server already and could deadlock if
	 * we tried to flush data, and since we do not know if we have data that
	 * would invalidate the current end of file on the server we can not go
	 * to the server to get the new inode info.
	 */

	/*
	 * If the server returned a read oplock and we have mandatory brlocks,
	 * set oplock level to None.
	 */
	if (server->ops->is_read_op(oplock) && FUNC9(cinode)) {
		FUNC6(FYI, "Reset oplock val from read to None due to mand locks\n");
		oplock = 0;
	}

	server->ops->set_fid(cfile, &cfile->fid, oplock);
	if (oparms.reconnect)
		FUNC11(cfile);

reopen_error_exit:
	FUNC17(full_path);
	FUNC14(xid);
	return rc;
}