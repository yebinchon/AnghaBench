#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct btrfs_dev_replace {int /*<<< orphan*/  scrub_progress; TYPE_1__* srcdev; int /*<<< orphan*/  committed_cursor_left; TYPE_1__* tgtdev; } ;
struct btrfs_fs_info {int /*<<< orphan*/  flags; struct btrfs_dev_replace dev_replace; } ;
struct TYPE_3__ {int /*<<< orphan*/  devid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_EXCL_OP ; 
 int ECANCELED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (struct btrfs_fs_info*,int) ; 
 scalar_t__ FUNC3 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC6 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC9(void *data)
{
	struct btrfs_fs_info *fs_info = data;
	struct btrfs_dev_replace *dev_replace = &fs_info->dev_replace;
	u64 progress;
	int ret;

	progress = FUNC3(fs_info);
	progress = FUNC8(progress, 10);
	FUNC5(fs_info,
		"continuing dev_replace from %s (devid %llu) to target %s @%u%%",
		FUNC1(dev_replace->srcdev),
		dev_replace->srcdev->devid,
		FUNC1(dev_replace->tgtdev),
		(unsigned int)progress);

	ret = FUNC6(fs_info, dev_replace->srcdev->devid,
			      dev_replace->committed_cursor_left,
			      FUNC4(dev_replace->srcdev),
			      &dev_replace->scrub_progress, 0, 1);
	ret = FUNC2(fs_info, ret);
	FUNC0(ret && ret != -ECANCELED);

	FUNC7(BTRFS_FS_EXCL_OP, &fs_info->flags);
	return 0;
}