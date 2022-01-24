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
struct extent_buffer {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {struct btrfs_fs_devices* fs_devices; } ;
struct btrfs_fs_devices {struct btrfs_fs_devices* seed; int /*<<< orphan*/ * fsid; int /*<<< orphan*/ * metadata_uuid; } ;

/* Variables and functions */
 int BTRFS_FSID_SIZE ; 
 int /*<<< orphan*/  METADATA_UUID ; 
 scalar_t__ FUNC0 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct extent_buffer *eb)
{
	struct btrfs_fs_info *fs_info = eb->fs_info;
	struct btrfs_fs_devices *fs_devices = fs_info->fs_devices;
	u8 fsid[BTRFS_FSID_SIZE];
	int ret = 1;

	FUNC3(eb, fsid, FUNC1(), BTRFS_FSID_SIZE);
	while (fs_devices) {
		u8 *metadata_uuid;

		/*
		 * Checking the incompat flag is only valid for the current
		 * fs. For seed devices it's forbidden to have their uuid
		 * changed so reading ->fsid in this case is fine
		 */
		if (fs_devices == fs_info->fs_devices &&
		    FUNC0(fs_info, METADATA_UUID))
			metadata_uuid = fs_devices->metadata_uuid;
		else
			metadata_uuid = fs_devices->fsid;

		if (!FUNC2(fsid, metadata_uuid, BTRFS_FSID_SIZE)) {
			ret = 0;
			break;
		}
		fs_devices = fs_devices->seed;
	}
	return ret;
}