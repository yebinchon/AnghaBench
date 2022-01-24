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
struct smb_vol {int dummy; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_ses {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct TCP_Server_Info {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int EREMOTE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (struct cifs_sb_info*,struct smb_vol*,unsigned int,struct TCP_Server_Info*,struct cifs_tcon*) ; 
 int FUNC2 (struct smb_vol*,struct cifs_sb_info*,unsigned int*,struct TCP_Server_Info**,struct cifs_ses**,struct cifs_tcon**) ; 
 int /*<<< orphan*/  FUNC3 (struct cifs_sb_info*,unsigned int,struct TCP_Server_Info*,struct cifs_ses*,struct cifs_tcon*) ; 
 int FUNC4 (struct cifs_sb_info*,struct cifs_ses*,struct cifs_tcon*) ; 

int FUNC5(struct cifs_sb_info *cifs_sb, struct smb_vol *vol)
{
	int rc = 0;
	unsigned int xid;
	struct cifs_ses *ses;
	struct cifs_tcon *tcon;
	struct TCP_Server_Info *server;

	rc = FUNC2(vol, cifs_sb, &xid, &server, &ses, &tcon);
	if (rc)
		goto error;

	if (tcon) {
		rc = FUNC1(cifs_sb, vol, xid, server, tcon);
		if (rc == -EREMOTE)
			rc = -EOPNOTSUPP;
		if (rc)
			goto error;
	}

	FUNC0(xid);

	return FUNC4(cifs_sb, ses, tcon);

error:
	FUNC3(cifs_sb, xid, server, ses, tcon);
	return rc;
}