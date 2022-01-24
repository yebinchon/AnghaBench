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
struct btrfs_fs_devices {int /*<<< orphan*/  fs_info; int /*<<< orphan*/  fsid_kobj; } ;

/* Variables and functions */
 int BTRFS_UUID_UNPARSED_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/  const*) ; 

void FUNC3(struct btrfs_fs_devices *fs_devices,
				    const u8 *fsid)
{
	char fsid_buf[BTRFS_UUID_UNPARSED_SIZE];

	/*
	 * Sprouting changes fsid of the mounted filesystem, rename the fsid
	 * directory
	 */
	FUNC2(fsid_buf, BTRFS_UUID_UNPARSED_SIZE, "%pU", fsid);
	if (FUNC1(&fs_devices->fsid_kobj, fsid_buf))
		FUNC0(fs_devices->fs_info,
				"sysfs: failed to create fsid for sprout");
}