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
struct btrfs_fs_devices {int /*<<< orphan*/  metadata_uuid; int /*<<< orphan*/  fsid; int /*<<< orphan*/  fs_list; int /*<<< orphan*/  alloc_list; int /*<<< orphan*/  devices; int /*<<< orphan*/  device_list_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FSID_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct btrfs_fs_devices* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct btrfs_fs_devices* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct btrfs_fs_devices *FUNC5(const u8 *fsid,
						 const u8 *metadata_fsid)
{
	struct btrfs_fs_devices *fs_devs;

	fs_devs = FUNC2(sizeof(*fs_devs), GFP_KERNEL);
	if (!fs_devs)
		return FUNC0(-ENOMEM);

	FUNC4(&fs_devs->device_list_mutex);

	FUNC1(&fs_devs->devices);
	FUNC1(&fs_devs->alloc_list);
	FUNC1(&fs_devs->fs_list);
	if (fsid)
		FUNC3(fs_devs->fsid, fsid, BTRFS_FSID_SIZE);

	if (metadata_fsid)
		FUNC3(fs_devs->metadata_uuid, metadata_fsid, BTRFS_FSID_SIZE);
	else if (fsid)
		FUNC3(fs_devs->metadata_uuid, fsid, BTRFS_FSID_SIZE);

	return fs_devs;
}