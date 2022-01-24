#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct smb_vol {int max_credits; int persistent; } ;
struct TYPE_10__ {int DeviceCharacteristics; } ;
struct TYPE_9__ {int /*<<< orphan*/  Capability; } ;
struct cifs_tcon {int max_credits; TYPE_5__* ops; TYPE_4__ fsDevInfo; int /*<<< orphan*/  pipe; scalar_t__ unix_ext; TYPE_3__ fsUnixInfo; TYPE_6__* ses; scalar_t__ posix_extensions; TYPE_1__* server; } ;
struct cifs_ses {int max_credits; TYPE_5__* ops; TYPE_4__ fsDevInfo; int /*<<< orphan*/  pipe; scalar_t__ unix_ext; TYPE_3__ fsUnixInfo; TYPE_6__* ses; scalar_t__ posix_extensions; TYPE_1__* server; } ;
struct cifs_sb_info {int mnt_cifs_flags; int /*<<< orphan*/  rsize; int /*<<< orphan*/  wsize; } ;
struct TCP_Server_Info {int max_credits; TYPE_5__* ops; TYPE_4__ fsDevInfo; int /*<<< orphan*/  pipe; scalar_t__ unix_ext; TYPE_3__ fsUnixInfo; TYPE_6__* ses; scalar_t__ posix_extensions; TYPE_1__* server; } ;
struct TYPE_12__ {TYPE_2__* server; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* negotiate_rsize ) (struct cifs_tcon*,struct smb_vol*) ;int /*<<< orphan*/  (* negotiate_wsize ) (struct cifs_tcon*,struct smb_vol*) ;int /*<<< orphan*/  (* qfs_tcon ) (unsigned int,struct cifs_tcon*) ;} ;
struct TYPE_8__ {scalar_t__ tcpStatus; } ;
struct TYPE_7__ {int capabilities; } ;

/* Variables and functions */
 int CIFS_MOUNT_POSIX_PATHS ; 
 int CIFS_MOUNT_RO_CACHE ; 
 int CIFS_MOUNT_RW_CACHE ; 
 int CIFS_UNIX_TRANSPORT_ENCRYPTION_MANDATORY_CAP ; 
 scalar_t__ CifsNeedReconnect ; 
 int EACCES ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FILE_READ_ONLY_DEVICE ; 
 scalar_t__ FUNC0 (struct cifs_tcon*) ; 
 int FUNC1 (struct cifs_tcon*) ; 
 int SMB2_GLOBAL_CAP_PERSISTENT_HANDLES ; 
 int SMB2_MAX_CREDITS_AVAILABLE ; 
 int /*<<< orphan*/  VFS ; 
 scalar_t__ FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct cifs_tcon* FUNC4 (struct cifs_tcon*,struct smb_vol*) ; 
 struct cifs_tcon* FUNC5 (struct cifs_tcon*,struct smb_vol*) ; 
 struct cifs_tcon* FUNC6 (struct smb_vol*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,struct cifs_tcon*,struct cifs_sb_info*,struct smb_vol*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,struct cifs_tcon*) ; 
 int /*<<< orphan*/  FUNC13 (struct cifs_tcon*,struct smb_vol*) ; 
 int /*<<< orphan*/  FUNC14 (struct cifs_tcon*,struct smb_vol*) ; 

__attribute__((used)) static int FUNC15(struct smb_vol *vol, struct cifs_sb_info *cifs_sb,
			   unsigned int *xid,
			   struct TCP_Server_Info **nserver,
			   struct cifs_ses **nses, struct cifs_tcon **ntcon)
{
	int rc = 0;
	struct TCP_Server_Info *server;
	struct cifs_ses *ses;
	struct cifs_tcon *tcon;

	*nserver = NULL;
	*nses = NULL;
	*ntcon = NULL;

	*xid = FUNC9();

	/* get a reference to a tcp session */
	server = FUNC6(vol);
	if (FUNC0(server)) {
		rc = FUNC1(server);
		return rc;
	}

	*nserver = server;

	if ((vol->max_credits < 20) || (vol->max_credits > 60000))
		server->max_credits = SMB2_MAX_CREDITS_AVAILABLE;
	else
		server->max_credits = vol->max_credits;

	/* get a reference to a SMB session */
	ses = FUNC4(server, vol);
	if (FUNC0(ses)) {
		rc = FUNC1(ses);
		return rc;
	}

	*nses = ses;

	if ((vol->persistent == true) && (!(ses->server->capabilities &
					    SMB2_GLOBAL_CAP_PERSISTENT_HANDLES))) {
		FUNC7(VFS, "persistent handles not supported by server\n");
		return -EOPNOTSUPP;
	}

	/* search for existing tcon to this server share */
	tcon = FUNC5(ses, vol);
	if (FUNC0(tcon)) {
		rc = FUNC1(tcon);
		return rc;
	}

	*ntcon = tcon;

	/* if new SMB3.11 POSIX extensions are supported do not remap / and \ */
	if (tcon->posix_extensions)
		cifs_sb->mnt_cifs_flags |= CIFS_MOUNT_POSIX_PATHS;

	/* tell server which Unix caps we support */
	if (FUNC2(tcon->ses)) {
		/*
		 * reset of caps checks mount to see if unix extensions disabled
		 * for just this mount.
		 */
		FUNC11(*xid, tcon, cifs_sb, vol);
		if ((tcon->ses->server->tcpStatus == CifsNeedReconnect) &&
		    (FUNC10(tcon->fsUnixInfo.Capability) &
		     CIFS_UNIX_TRANSPORT_ENCRYPTION_MANDATORY_CAP))
			return -EACCES;
	} else
		tcon->unix_ext = 0; /* server does not support them */

	/* do not care if a following call succeed - informational */
	if (!tcon->pipe && server->ops->qfs_tcon) {
		server->ops->qfs_tcon(*xid, tcon);
		if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_RO_CACHE) {
			if (tcon->fsDevInfo.DeviceCharacteristics &
			    FUNC8(FILE_READ_ONLY_DEVICE))
				FUNC3(VFS, "mounted to read only share\n");
			else if ((cifs_sb->mnt_cifs_flags &
				  CIFS_MOUNT_RW_CACHE) == 0)
				FUNC3(VFS, "read only mount of RW share\n");
			/* no need to log a RW mount of a typical RW share */
		}
	}

	cifs_sb->wsize = server->ops->negotiate_wsize(tcon, vol);
	cifs_sb->rsize = server->ops->negotiate_rsize(tcon, vol);

	return 0;
}