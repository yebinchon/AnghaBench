#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int /*<<< orphan*/  local_nls; } ;
struct cifs_open_parms {char const* path; int reconnect; struct cifs_fid* fid; int /*<<< orphan*/  disposition; scalar_t__ create_options; int /*<<< orphan*/  desired_access; struct cifs_sb_info* cifs_sb; struct cifs_tcon* tcon; } ;
struct cifs_fid {int /*<<< orphan*/  netfid; } ;
struct TYPE_5__ {int /*<<< orphan*/  Attributes; } ;
typedef  TYPE_1__ FILE_ALL_INFO ;

/* Variables and functions */
 int ATTR_REPARSE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int const,struct cifs_tcon*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int const,struct cifs_tcon*,char const*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned int const,struct cifs_open_parms*,int*,int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FILE_OPEN ; 
 int /*<<< orphan*/  FILE_READ_ATTRIBUTES ; 
 int FUNC3 (unsigned int const,struct cifs_tcon*,char const*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cifs_sb_info*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(const unsigned int xid, struct cifs_tcon *tcon,
		     struct cifs_sb_info *cifs_sb, const char *full_path,
		     FILE_ALL_INFO *data, bool *adjustTZ, bool *symlink)
{
	int rc;

	*symlink = false;

	/* could do find first instead but this returns more info */
	rc = FUNC1(xid, tcon, full_path, data, 0 /* not legacy */,
			      cifs_sb->local_nls, FUNC4(cifs_sb));
	/*
	 * BB optimize code so we do not make the above call when server claims
	 * no NT SMB support and the above call failed at least once - set flag
	 * in tcon or mount.
	 */
	if ((rc == -EOPNOTSUPP) || (rc == -EINVAL)) {
		rc = FUNC3(xid, tcon, full_path, data,
					 cifs_sb->local_nls,
					 FUNC4(cifs_sb));
		*adjustTZ = true;
	}

	if (!rc && (FUNC5(data->Attributes) & ATTR_REPARSE)) {
		int tmprc;
		int oplock = 0;
		struct cifs_fid fid;
		struct cifs_open_parms oparms;

		oparms.tcon = tcon;
		oparms.cifs_sb = cifs_sb;
		oparms.desired_access = FILE_READ_ATTRIBUTES;
		oparms.create_options = 0;
		oparms.disposition = FILE_OPEN;
		oparms.path = full_path;
		oparms.fid = &fid;
		oparms.reconnect = false;

		/* Need to check if this is a symbolic link or not */
		tmprc = FUNC2(xid, &oparms, &oplock, NULL);
		if (tmprc == -EOPNOTSUPP)
			*symlink = true;
		else if (tmprc == 0)
			FUNC0(xid, tcon, fid.netfid);
	}

	return rc;
}