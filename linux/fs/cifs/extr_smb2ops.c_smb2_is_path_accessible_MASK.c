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
struct TYPE_2__ {scalar_t__ is_valid; } ;
struct cifs_tcon {TYPE_1__ crfid; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_open_parms {int reconnect; struct cifs_fid* fid; scalar_t__ create_options; int /*<<< orphan*/  disposition; int /*<<< orphan*/  desired_access; struct cifs_tcon* tcon; } ;
struct cifs_fid {int /*<<< orphan*/  volatile_fid; int /*<<< orphan*/  persistent_fid; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 scalar_t__ CREATE_OPEN_BACKUP_INTENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FILE_OPEN ; 
 int /*<<< orphan*/  FILE_READ_ATTRIBUTES ; 
 int /*<<< orphan*/  SMB2_OPLOCK_LEVEL_NONE ; 
 int FUNC0 (unsigned int const,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int const,struct cifs_open_parms*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(const unsigned int xid, struct cifs_tcon *tcon,
			struct cifs_sb_info *cifs_sb, const char *full_path)
{
	int rc;
	__le16 *utf16_path;
	__u8 oplock = SMB2_OPLOCK_LEVEL_NONE;
	struct cifs_open_parms oparms;
	struct cifs_fid fid;

	if ((*full_path == 0) && tcon->crfid.is_valid)
		return 0;

	utf16_path = FUNC3(full_path, cifs_sb);
	if (!utf16_path)
		return -ENOMEM;

	oparms.tcon = tcon;
	oparms.desired_access = FILE_READ_ATTRIBUTES;
	oparms.disposition = FILE_OPEN;
	if (FUNC2(cifs_sb))
		oparms.create_options = CREATE_OPEN_BACKUP_INTENT;
	else
		oparms.create_options = 0;
	oparms.fid = &fid;
	oparms.reconnect = false;

	rc = FUNC1(xid, &oparms, utf16_path, &oplock, NULL, NULL, NULL);
	if (rc) {
		FUNC4(utf16_path);
		return rc;
	}

	rc = FUNC0(xid, tcon, fid.persistent_fid, fid.volatile_fid);
	FUNC4(utf16_path);
	return rc;
}