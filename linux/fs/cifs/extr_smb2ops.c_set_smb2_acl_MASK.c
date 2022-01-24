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
typedef  int /*<<< orphan*/  u8 ;
struct tcon_link {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_open_parms {int desired_access; char const* path; int reconnect; struct cifs_fid* fid; int /*<<< orphan*/  disposition; struct cifs_tcon* tcon; scalar_t__ create_options; } ;
struct cifs_ntsd {int dummy; } ;
struct cifs_fid {int /*<<< orphan*/  volatile_fid; int /*<<< orphan*/  persistent_fid; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int CIFS_ACL_GROUP ; 
 int CIFS_ACL_OWNER ; 
 struct cifs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CREATE_OPEN_BACKUP_INTENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FILE_OPEN ; 
 int /*<<< orphan*/  FYI ; 
 scalar_t__ FUNC1 (struct tcon_link*) ; 
 int FUNC2 (struct tcon_link*) ; 
 int /*<<< orphan*/  SMB2_OPLOCK_LEVEL_NONE ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int,struct cifs_open_parms*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (unsigned int,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cifs_ntsd*,int /*<<< orphan*/ ,int) ; 
 int WRITE_DAC ; 
 int WRITE_OWNER ; 
 scalar_t__ FUNC6 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct tcon_link*) ; 
 struct tcon_link* FUNC10 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 unsigned int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct cifs_tcon* FUNC14 (struct tcon_link*) ; 

__attribute__((used)) static int
FUNC15(struct cifs_ntsd *pnntsd, __u32 acllen,
		struct inode *inode, const char *path, int aclflag)
{
	u8 oplock = SMB2_OPLOCK_LEVEL_NONE;
	unsigned int xid;
	int rc, access_flags = 0;
	struct cifs_tcon *tcon;
	struct cifs_sb_info *cifs_sb = FUNC0(inode->i_sb);
	struct tcon_link *tlink = FUNC10(cifs_sb);
	struct cifs_fid fid;
	struct cifs_open_parms oparms;
	__le16 *utf16_path;

	FUNC8(FYI, "set smb3 acl for path %s\n", path);
	if (FUNC1(tlink))
		return FUNC2(tlink);

	tcon = FUNC14(tlink);
	xid = FUNC12();

	if (FUNC6(cifs_sb))
		oparms.create_options = CREATE_OPEN_BACKUP_INTENT;
	else
		oparms.create_options = 0;

	if (aclflag == CIFS_ACL_OWNER || aclflag == CIFS_ACL_GROUP)
		access_flags = WRITE_OWNER;
	else
		access_flags = WRITE_DAC;

	utf16_path = FUNC7(path, cifs_sb);
	if (!utf16_path) {
		rc = -ENOMEM;
		FUNC11(xid);
		return rc;
	}

	oparms.tcon = tcon;
	oparms.desired_access = access_flags;
	oparms.disposition = FILE_OPEN;
	oparms.path = path;
	oparms.fid = &fid;
	oparms.reconnect = false;

	rc = FUNC4(xid, &oparms, utf16_path, &oplock, NULL, NULL, NULL);
	FUNC13(utf16_path);
	if (!rc) {
		rc = FUNC5(xid, FUNC14(tlink), fid.persistent_fid,
			    fid.volatile_fid, pnntsd, acllen, aclflag);
		FUNC3(xid, tcon, fid.persistent_fid, fid.volatile_fid);
	}

	FUNC9(tlink);
	FUNC11(xid);
	return rc;
}