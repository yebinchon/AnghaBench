#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct file_lock {int /*<<< orphan*/  fl_end; int /*<<< orphan*/  fl_start; int /*<<< orphan*/  fl_type; int /*<<< orphan*/  fl_flags; } ;
struct file {scalar_t__ private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  Capability; } ;
struct cifs_tcon {TYPE_1__ fsUnixInfo; TYPE_2__* ses; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifsFileInfo {int /*<<< orphan*/  tlink; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_4__ {int /*<<< orphan*/  server; } ;

/* Variables and functions */
 struct cifs_sb_info* FUNC0 (struct file*) ; 
 int CIFS_MOUNT_NOPOSIXBRL ; 
 int CIFS_UNIX_FCNTL_CAP ; 
 int EACCES ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FYI ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct file*,struct file_lock*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct file_lock*,int /*<<< orphan*/ *,int*,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct file*,struct file_lock*,int /*<<< orphan*/ ,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 struct cifs_tcon* FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct file *file, int cmd, struct file_lock *flock)
{
	int rc, xid;
	int lock = 0, unlock = 0;
	bool wait_flag = false;
	bool posix_lck = false;
	struct cifs_sb_info *cifs_sb;
	struct cifs_tcon *tcon;
	struct cifsFileInfo *cfile;
	__u32 type;

	rc = -EACCES;
	xid = FUNC8();

	FUNC3(FYI, "Lock parm: 0x%x flockflags: 0x%x flocktype: 0x%x start: %lld end: %lld\n",
		 cmd, flock->fl_flags, flock->fl_type,
		 flock->fl_start, flock->fl_end);

	cfile = (struct cifsFileInfo *)file->private_data;
	tcon = FUNC10(cfile->tlink);

	FUNC5(flock, &type, &lock, &unlock, &wait_flag,
			tcon->ses->server);
	cifs_sb = FUNC0(file);

	if (FUNC2(tcon->ses) &&
	    (CIFS_UNIX_FCNTL_CAP & FUNC9(tcon->fsUnixInfo.Capability)) &&
	    ((cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NOPOSIXBRL) == 0))
		posix_lck = true;
	/*
	 * BB add code here to normalize offset and length to account for
	 * negative length which we can not accept over the wire.
	 */
	if (FUNC1(cmd)) {
		rc = FUNC4(file, flock, type, wait_flag, posix_lck, xid);
		FUNC7(xid);
		return rc;
	}

	if (!lock && !unlock) {
		/*
		 * if no lock or unlock then nothing to do since we do not
		 * know what it is
		 */
		FUNC7(xid);
		return -EOPNOTSUPP;
	}

	rc = FUNC6(file, flock, type, wait_flag, posix_lck, lock, unlock,
			xid);
	FUNC7(xid);
	return rc;
}