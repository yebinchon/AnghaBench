#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tcon_link {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int /*<<< orphan*/  local_nls; } ;
struct cifs_open_parms {int desired_access; char const* path; int reconnect; struct cifs_fid* fid; int /*<<< orphan*/  disposition; int /*<<< orphan*/  create_options; struct cifs_sb_info* cifs_sb; struct cifs_tcon* tcon; } ;
struct cifs_fid {int /*<<< orphan*/  netfid; } ;
struct cifsInodeInfo {void* cifsAttrs; } ;
struct TYPE_7__ {int /*<<< orphan*/  netfid; } ;
struct cifsFileInfo {struct tcon_link* tlink; int /*<<< orphan*/  pid; TYPE_1__ fid; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_9__ {int /*<<< orphan*/  tgid; } ;
struct TYPE_8__ {int /*<<< orphan*/  Attributes; } ;
typedef  TYPE_2__ FILE_BASIC_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int const,struct cifs_tcon*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int const,struct cifs_tcon*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned int const,struct cifs_tcon*,char const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cifsInodeInfo* FUNC3 (struct inode*) ; 
 struct cifs_sb_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (unsigned int const,struct cifs_open_parms*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CREATE_NOT_DIR ; 
 int EINVAL ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FILE_OPEN ; 
 int FILE_WRITE_ATTRIBUTES ; 
 int /*<<< orphan*/  FYI ; 
 scalar_t__ FUNC6 (struct tcon_link*) ; 
 int FUNC7 (struct tcon_link*) ; 
 int SYNCHRONIZE ; 
 int /*<<< orphan*/  FUNC8 (struct cifsFileInfo*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct tcon_link*) ; 
 int /*<<< orphan*/  FUNC11 (struct cifs_sb_info*) ; 
 struct tcon_link* FUNC12 (struct cifs_sb_info*) ; 
 TYPE_4__* current ; 
 struct cifsFileInfo* FUNC13 (struct cifsInodeInfo*,int) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 
 struct cifs_tcon* FUNC15 (struct tcon_link*) ; 

__attribute__((used)) static int
FUNC16(struct inode *inode, const char *full_path,
		  FILE_BASIC_INFO *buf, const unsigned int xid)
{
	int oplock = 0;
	int rc;
	__u32 netpid;
	struct cifs_fid fid;
	struct cifs_open_parms oparms;
	struct cifsFileInfo *open_file;
	struct cifsInodeInfo *cinode = FUNC3(inode);
	struct cifs_sb_info *cifs_sb = FUNC4(inode->i_sb);
	struct tcon_link *tlink = NULL;
	struct cifs_tcon *tcon;

	/* if the file is already open for write, just use that fileid */
	open_file = FUNC13(cinode, true);
	if (open_file) {
		fid.netfid = open_file->fid.netfid;
		netpid = open_file->pid;
		tcon = FUNC15(open_file->tlink);
		goto set_via_filehandle;
	}

	tlink = FUNC12(cifs_sb);
	if (FUNC6(tlink)) {
		rc = FUNC7(tlink);
		tlink = NULL;
		goto out;
	}
	tcon = FUNC15(tlink);

	rc = FUNC2(xid, tcon, full_path, buf, cifs_sb->local_nls,
				FUNC11(cifs_sb));
	if (rc == 0) {
		cinode->cifsAttrs = FUNC14(buf->Attributes);
		goto out;
	} else if (rc != -EOPNOTSUPP && rc != -EINVAL) {
		goto out;
	}

	oparms.tcon = tcon;
	oparms.cifs_sb = cifs_sb;
	oparms.desired_access = SYNCHRONIZE | FILE_WRITE_ATTRIBUTES;
	oparms.create_options = CREATE_NOT_DIR;
	oparms.disposition = FILE_OPEN;
	oparms.path = full_path;
	oparms.fid = &fid;
	oparms.reconnect = false;

	FUNC9(FYI, "calling SetFileInfo since SetPathInfo for times not supported by this server\n");
	rc = FUNC5(xid, &oparms, &oplock, NULL);
	if (rc != 0) {
		if (rc == -EIO)
			rc = -EINVAL;
		goto out;
	}

	netpid = current->tgid;

set_via_filehandle:
	rc = FUNC1(xid, tcon, buf, fid.netfid, netpid);
	if (!rc)
		cinode->cifsAttrs = FUNC14(buf->Attributes);

	if (open_file == NULL)
		FUNC0(xid, tcon, fid.netfid);
	else
		FUNC8(open_file);
out:
	if (tlink != NULL)
		FUNC10(tlink);
	return rc;
}