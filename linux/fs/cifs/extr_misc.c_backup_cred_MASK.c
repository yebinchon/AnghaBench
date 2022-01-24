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
struct cifs_sb_info {int mnt_cifs_flags; int /*<<< orphan*/  mnt_backupgid; int /*<<< orphan*/  mnt_backupuid; } ;

/* Variables and functions */
 int CIFS_MOUNT_CIFS_BACKUPGID ; 
 int CIFS_MOUNT_CIFS_BACKUPUID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC3(struct cifs_sb_info *cifs_sb)
{
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_CIFS_BACKUPUID) {
		if (FUNC2(cifs_sb->mnt_backupuid, FUNC0()))
			return true;
	}
	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_CIFS_BACKUPGID) {
		if (FUNC1(cifs_sb->mnt_backupgid))
			return true;
	}

	return false;
}