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
struct tcon_link {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_open_parms {int desired_access; int create_options; char const* path; int reconnect; struct cifs_fid* fid; int /*<<< orphan*/  disposition; struct cifs_sb_info* cifs_sb; struct cifs_tcon* tcon; } ;
struct cifs_ntsd {int dummy; } ;
struct cifs_fid {int /*<<< orphan*/  netfid; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,struct cifs_tcon*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int,struct cifs_tcon*,int /*<<< orphan*/ ,struct cifs_ntsd*,int /*<<< orphan*/ ,int) ; 
 int CIFS_ACL_GROUP ; 
 int CIFS_ACL_OWNER ; 
 struct cifs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int,struct cifs_open_parms*,int*,int /*<<< orphan*/ *) ; 
 int CREATE_OPEN_BACKUP_INTENT ; 
 int /*<<< orphan*/  FILE_OPEN ; 
 scalar_t__ FUNC4 (struct tcon_link*) ; 
 int /*<<< orphan*/  NOISY ; 
 int FUNC5 (struct tcon_link*) ; 
 int /*<<< orphan*/  VFS ; 
 int WRITE_DAC ; 
 int WRITE_OWNER ; 
 scalar_t__ FUNC6 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct tcon_link*) ; 
 struct tcon_link* FUNC9 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 unsigned int FUNC11 () ; 
 struct cifs_tcon* FUNC12 (struct tcon_link*) ; 

int FUNC13(struct cifs_ntsd *pnntsd, __u32 acllen,
			struct inode *inode, const char *path, int aclflag)
{
	int oplock = 0;
	unsigned int xid;
	int rc, access_flags, create_options = 0;
	struct cifs_tcon *tcon;
	struct cifs_sb_info *cifs_sb = FUNC2(inode->i_sb);
	struct tcon_link *tlink = FUNC9(cifs_sb);
	struct cifs_fid fid;
	struct cifs_open_parms oparms;

	if (FUNC4(tlink))
		return FUNC5(tlink);

	tcon = FUNC12(tlink);
	xid = FUNC11();

	if (FUNC6(cifs_sb))
		create_options |= CREATE_OPEN_BACKUP_INTENT;

	if (aclflag == CIFS_ACL_OWNER || aclflag == CIFS_ACL_GROUP)
		access_flags = WRITE_OWNER;
	else
		access_flags = WRITE_DAC;

	oparms.tcon = tcon;
	oparms.cifs_sb = cifs_sb;
	oparms.desired_access = access_flags;
	oparms.create_options = create_options;
	oparms.disposition = FILE_OPEN;
	oparms.path = path;
	oparms.fid = &fid;
	oparms.reconnect = false;

	rc = FUNC3(xid, &oparms, &oplock, NULL);
	if (rc) {
		FUNC7(VFS, "Unable to open file to set ACL\n");
		goto out;
	}

	rc = FUNC1(xid, tcon, fid.netfid, pnntsd, acllen, aclflag);
	FUNC7(NOISY, "SetCIFSACL rc = %d\n", rc);

	FUNC0(xid, tcon, fid.netfid);
out:
	FUNC10(xid);
	FUNC8(tlink);
	return rc;
}