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
struct cifs_tcon {int dummy; } ;
struct cifs_search_info {int index_of_last_entry; scalar_t__ entries_in_buffer; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_open_parms {int desired_access; int reconnect; struct cifs_fid* fid; scalar_t__ create_options; int /*<<< orphan*/  disposition; struct cifs_tcon* tcon; } ;
struct cifs_fid {int /*<<< orphan*/  volatile_fid; int /*<<< orphan*/  persistent_fid; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u16 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 scalar_t__ CREATE_OPEN_BACKUP_INTENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FILE_OPEN ; 
 int FILE_READ_ATTRIBUTES ; 
 int FILE_READ_DATA ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  SMB2_OPLOCK_LEVEL_NONE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int const,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int const,struct cifs_open_parms*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned int const,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cifs_search_info*) ; 
 scalar_t__ FUNC3 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(const unsigned int xid, struct cifs_tcon *tcon,
		     const char *path, struct cifs_sb_info *cifs_sb,
		     struct cifs_fid *fid, __u16 search_flags,
		     struct cifs_search_info *srch_inf)
{
	__le16 *utf16_path;
	int rc;
	__u8 oplock = SMB2_OPLOCK_LEVEL_NONE;
	struct cifs_open_parms oparms;

	utf16_path = FUNC4(path, cifs_sb);
	if (!utf16_path)
		return -ENOMEM;

	oparms.tcon = tcon;
	oparms.desired_access = FILE_READ_ATTRIBUTES | FILE_READ_DATA;
	oparms.disposition = FILE_OPEN;
	if (FUNC3(cifs_sb))
		oparms.create_options = CREATE_OPEN_BACKUP_INTENT;
	else
		oparms.create_options = 0;
	oparms.fid = fid;
	oparms.reconnect = false;

	rc = FUNC1(xid, &oparms, utf16_path, &oplock, NULL, NULL, NULL);
	FUNC6(utf16_path);
	if (rc) {
		FUNC5(FYI, "open dir failed rc=%d\n", rc);
		return rc;
	}

	srch_inf->entries_in_buffer = 0;
	srch_inf->index_of_last_entry = 2;

	rc = FUNC2(xid, tcon, fid->persistent_fid,
				  fid->volatile_fid, 0, srch_inf);
	if (rc) {
		FUNC5(FYI, "query directory failed rc=%d\n", rc);
		FUNC0(xid, tcon, fid->persistent_fid, fid->volatile_fid);
	}
	return rc;
}