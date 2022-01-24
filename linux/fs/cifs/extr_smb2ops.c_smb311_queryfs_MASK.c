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
struct kstatfs {int /*<<< orphan*/  f_type; } ;
struct cifs_tcon {int /*<<< orphan*/  posix_extensions; } ;
struct cifs_open_parms {int reconnect; struct cifs_fid* fid; scalar_t__ create_options; int /*<<< orphan*/  disposition; int /*<<< orphan*/  desired_access; struct cifs_tcon* tcon; } ;
struct cifs_fid {int /*<<< orphan*/  volatile_fid; int /*<<< orphan*/  persistent_fid; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_OPEN ; 
 int /*<<< orphan*/  FILE_READ_ATTRIBUTES ; 
 int /*<<< orphan*/  SMB2_MAGIC_NUMBER ; 
 int /*<<< orphan*/  SMB2_OPLOCK_LEVEL_NONE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int const,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int const,struct cifs_open_parms*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned int const,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kstatfs*) ; 
 int FUNC3 (unsigned int const,struct cifs_tcon*,struct kstatfs*) ; 

__attribute__((used)) static int
FUNC4(const unsigned int xid, struct cifs_tcon *tcon,
	     struct kstatfs *buf)
{
	int rc;
	__le16 srch_path = 0; /* Null - open root of share */
	u8 oplock = SMB2_OPLOCK_LEVEL_NONE;
	struct cifs_open_parms oparms;
	struct cifs_fid fid;

	if (!tcon->posix_extensions)
		return FUNC3(xid, tcon, buf);

	oparms.tcon = tcon;
	oparms.desired_access = FILE_READ_ATTRIBUTES;
	oparms.disposition = FILE_OPEN;
	oparms.create_options = 0;
	oparms.fid = &fid;
	oparms.reconnect = false;

	rc = FUNC1(xid, &oparms, &srch_path, &oplock, NULL, NULL, NULL);
	if (rc)
		return rc;

	rc = FUNC2(xid, tcon, fid.persistent_fid,
				   fid.volatile_fid, buf);
	buf->f_type = SMB2_MAGIC_NUMBER;
	FUNC0(xid, tcon, fid.persistent_fid, fid.volatile_fid);
	return rc;
}