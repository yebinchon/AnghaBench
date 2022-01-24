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
struct tcon_link {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  Capability; } ;
struct cifs_tcon {TYPE_1__ fsUnixInfo; TYPE_3__* ses; scalar_t__ posix_extensions; } ;
struct cifs_sb_info {int dummy; } ;
struct TCP_Server_Info {TYPE_2__* ops; } ;
struct TYPE_8__ {scalar_t__ time; } ;
struct TYPE_7__ {struct TCP_Server_Info* server; } ;
struct TYPE_6__ {int (* posix_mkdir ) (unsigned int,struct inode*,int /*<<< orphan*/ ,struct cifs_tcon*,char*,struct cifs_sb_info*) ;int (* mkdir ) (unsigned int,struct inode*,int /*<<< orphan*/ ,struct cifs_tcon*,char*,struct cifs_sb_info*) ;} ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 struct cifs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int CIFS_UNIX_POSIX_PATH_OPS_CAP ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FYI ; 
 scalar_t__ FUNC2 (struct tcon_link*) ; 
 int FUNC3 (struct tcon_link*) ; 
 char* FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC7 (struct inode*,struct dentry*,int /*<<< orphan*/ ,char*,struct cifs_sb_info*,struct cifs_tcon*,unsigned int) ; 
 int FUNC8 (struct inode*,struct dentry*,int /*<<< orphan*/ ,char*,struct cifs_sb_info*,struct cifs_tcon*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct tcon_link*) ; 
 struct tcon_link* FUNC10 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 unsigned int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (unsigned int,struct inode*,int /*<<< orphan*/ ,struct cifs_tcon*,char*,struct cifs_sb_info*) ; 
 int FUNC17 (unsigned int,struct inode*,int /*<<< orphan*/ ,struct cifs_tcon*,char*,struct cifs_sb_info*) ; 
 struct cifs_tcon* FUNC18 (struct tcon_link*) ; 

int FUNC19(struct inode *inode, struct dentry *direntry, umode_t mode)
{
	int rc = 0;
	unsigned int xid;
	struct cifs_sb_info *cifs_sb;
	struct tcon_link *tlink;
	struct cifs_tcon *tcon;
	struct TCP_Server_Info *server;
	char *full_path;

	FUNC6(FYI, "In cifs_mkdir, mode = 0x%hx inode = 0x%p\n",
		 mode, inode);

	cifs_sb = FUNC1(inode->i_sb);
	tlink = FUNC10(cifs_sb);
	if (FUNC2(tlink))
		return FUNC3(tlink);
	tcon = FUNC18(tlink);

	xid = FUNC13();

	full_path = FUNC4(direntry);
	if (full_path == NULL) {
		rc = -ENOMEM;
		goto mkdir_out;
	}

	server = tcon->ses->server;

	if ((server->ops->posix_mkdir) && (tcon->posix_extensions)) {
		rc = server->ops->posix_mkdir(xid, inode, mode, tcon, full_path,
					      cifs_sb);
		FUNC11(direntry); /* for time being always refresh inode info */
		goto mkdir_out;
	}

	if (FUNC5(tcon->ses) && (CIFS_UNIX_POSIX_PATH_OPS_CAP &
				FUNC15(tcon->fsUnixInfo.Capability))) {
		rc = FUNC8(inode, direntry, mode, full_path, cifs_sb,
				      tcon, xid);
		if (rc != -EOPNOTSUPP)
			goto mkdir_out;
	}

	if (!server->ops->mkdir) {
		rc = -ENOSYS;
		goto mkdir_out;
	}

	/* BB add setting the equivalent of mode via CreateX w/ACLs */
	rc = server->ops->mkdir(xid, inode, mode, tcon, full_path, cifs_sb);
	if (rc) {
		FUNC6(FYI, "cifs_mkdir returned 0x%x\n", rc);
		FUNC11(direntry);
		goto mkdir_out;
	}

	/* TODO: skip this for smb2/smb3 */
	rc = FUNC7(inode, direntry, mode, full_path, cifs_sb, tcon,
			      xid);
mkdir_out:
	/*
	 * Force revalidate to get parent dir info when needed since cached
	 * attributes are invalid now.
	 */
	FUNC0(inode)->time = 0;
	FUNC14(full_path);
	FUNC12(xid);
	FUNC9(tlink);
	return rc;
}