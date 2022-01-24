#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct scrub_ctx {int /*<<< orphan*/  stat; } ;
struct btrfs_scrub_progress {int dummy; } ;
struct btrfs_fs_info {TYPE_1__* fs_devices; } ;
struct btrfs_device {struct scrub_ctx* scrub_ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  device_list_mutex; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOTCONN ; 
 struct btrfs_device* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_scrub_progress*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct btrfs_fs_info *fs_info, u64 devid,
			 struct btrfs_scrub_progress *progress)
{
	struct btrfs_device *dev;
	struct scrub_ctx *sctx = NULL;

	FUNC2(&fs_info->fs_devices->device_list_mutex);
	dev = FUNC0(fs_info->fs_devices, devid, NULL, NULL, true);
	if (dev)
		sctx = dev->scrub_ctx;
	if (sctx)
		FUNC1(progress, &sctx->stat, sizeof(*progress));
	FUNC3(&fs_info->fs_devices->device_list_mutex);

	return dev ? (sctx ? 0 : -ENOTCONN) : -ENODEV;
}