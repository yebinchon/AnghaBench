#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct smb_vol {int no_linux_ext; int /*<<< orphan*/  password; struct smb_vol* username; int /*<<< orphan*/  sign; int /*<<< orphan*/  sectype; int /*<<< orphan*/  local_lease; int /*<<< orphan*/  nohandlecache; int /*<<< orphan*/  nocase; int /*<<< orphan*/  retry; int /*<<< orphan*/  UNC; void* cred_uid; void* linux_uid; int /*<<< orphan*/  local_nls; } ;
struct cifs_tcon {scalar_t__ posix_extensions; TYPE_1__* ses; int /*<<< orphan*/  unix_ext; int /*<<< orphan*/  local_lease; int /*<<< orphan*/  nohandlecache; int /*<<< orphan*/  nocase; int /*<<< orphan*/  retry; int /*<<< orphan*/  treeName; } ;
struct cifs_ses {scalar_t__ posix_extensions; TYPE_1__* ses; int /*<<< orphan*/  unix_ext; int /*<<< orphan*/  local_lease; int /*<<< orphan*/  nohandlecache; int /*<<< orphan*/  nocase; int /*<<< orphan*/  retry; int /*<<< orphan*/  treeName; } ;
struct cifs_sb_info {int /*<<< orphan*/  mnt_cifs_flags; int /*<<< orphan*/  local_nls; } ;
typedef  void* kuid_t ;
struct TYPE_5__ {int /*<<< orphan*/  srv_count; } ;
struct TYPE_4__ {TYPE_2__* server; int /*<<< orphan*/  sign; int /*<<< orphan*/  sectype; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIFS_MOUNT_POSIX_PATHS ; 
 int ENOMEM ; 
 struct cifs_tcon* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct cifs_tcon*) ; 
 scalar_t__ FUNC2 (struct cifs_tcon*) ; 
 struct cifs_tcon* FUNC3 (TYPE_2__*,struct smb_vol*) ; 
 struct cifs_tcon* FUNC4 (struct cifs_tcon*,struct smb_vol*) ; 
 int /*<<< orphan*/  FUNC5 (struct cifs_tcon*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct cifs_tcon* FUNC7 (struct cifs_sb_info*) ; 
 int FUNC8 (struct smb_vol*,TYPE_1__*) ; 
 int /*<<< orphan*/  cifs_tcp_ses_lock ; 
 int /*<<< orphan*/  FUNC9 (struct smb_vol*) ; 
 struct smb_vol* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct cifs_tcon*,int /*<<< orphan*/ *,struct smb_vol*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cifs_tcon *
FUNC15(struct cifs_sb_info *cifs_sb, kuid_t fsuid)
{
	int rc;
	struct cifs_tcon *master_tcon = FUNC7(cifs_sb);
	struct cifs_ses *ses;
	struct cifs_tcon *tcon = NULL;
	struct smb_vol *vol_info;

	vol_info = FUNC10(sizeof(*vol_info), GFP_KERNEL);
	if (vol_info == NULL)
		return FUNC0(-ENOMEM);

	vol_info->local_nls = cifs_sb->local_nls;
	vol_info->linux_uid = fsuid;
	vol_info->cred_uid = fsuid;
	vol_info->UNC = master_tcon->treeName;
	vol_info->retry = master_tcon->retry;
	vol_info->nocase = master_tcon->nocase;
	vol_info->nohandlecache = master_tcon->nohandlecache;
	vol_info->local_lease = master_tcon->local_lease;
	vol_info->no_linux_ext = !master_tcon->unix_ext;
	vol_info->sectype = master_tcon->ses->sectype;
	vol_info->sign = master_tcon->ses->sign;

	rc = FUNC8(vol_info, master_tcon->ses);
	if (rc) {
		tcon = FUNC0(rc);
		goto out;
	}

	/* get a reference for the same TCP session */
	FUNC13(&cifs_tcp_ses_lock);
	++master_tcon->ses->server->srv_count;
	FUNC14(&cifs_tcp_ses_lock);

	ses = FUNC3(master_tcon->ses->server, vol_info);
	if (FUNC1(ses)) {
		tcon = (struct cifs_tcon *)ses;
		FUNC6(master_tcon->ses->server, 0);
		goto out;
	}

	tcon = FUNC4(ses, vol_info);
	if (FUNC1(tcon)) {
		FUNC5(ses);
		goto out;
	}

	/* if new SMB3.11 POSIX extensions are supported do not remap / and \ */
	if (tcon->posix_extensions)
		cifs_sb->mnt_cifs_flags |= CIFS_MOUNT_POSIX_PATHS;

	if (FUNC2(ses))
		FUNC12(0, tcon, NULL, vol_info);

out:
	FUNC9(vol_info->username);
	FUNC11(vol_info->password);
	FUNC9(vol_info);

	return tcon;
}