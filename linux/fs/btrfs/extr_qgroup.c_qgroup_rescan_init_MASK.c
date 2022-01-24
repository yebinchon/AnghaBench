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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_fs_info {int qgroup_flags; int qgroup_rescan_running; TYPE_1__ qgroup_rescan_work; int /*<<< orphan*/  qgroup_rescan_lock; int /*<<< orphan*/  qgroup_lock; int /*<<< orphan*/  qgroup_rescan_completion; TYPE_1__ qgroup_rescan_progress; } ;

/* Variables and functions */
 int BTRFS_QGROUP_STATUS_FLAG_ON ; 
 int BTRFS_QGROUP_STATUS_FLAG_RESCAN ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  btrfs_qgroup_rescan_helper ; 
 int /*<<< orphan*/  btrfs_qgroup_rescan_worker ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct btrfs_fs_info *fs_info, u64 progress_objectid,
		   int init_flags)
{
	int ret = 0;

	if (!init_flags) {
		/* we're resuming qgroup rescan at mount time */
		if (!(fs_info->qgroup_flags &
		      BTRFS_QGROUP_STATUS_FLAG_RESCAN)) {
			FUNC1(fs_info,
			"qgroup rescan init failed, qgroup is not enabled");
			ret = -EINVAL;
		} else if (!(fs_info->qgroup_flags &
			     BTRFS_QGROUP_STATUS_FLAG_ON)) {
			FUNC1(fs_info,
			"qgroup rescan init failed, qgroup rescan is not queued");
			ret = -EINVAL;
		}

		if (ret)
			return ret;
	}

	FUNC4(&fs_info->qgroup_rescan_lock);
	FUNC6(&fs_info->qgroup_lock);

	if (init_flags) {
		if (fs_info->qgroup_flags & BTRFS_QGROUP_STATUS_FLAG_RESCAN) {
			FUNC1(fs_info,
				   "qgroup rescan is already in progress");
			ret = -EINPROGRESS;
		} else if (!(fs_info->qgroup_flags &
			     BTRFS_QGROUP_STATUS_FLAG_ON)) {
			FUNC1(fs_info,
			"qgroup rescan init failed, qgroup is not enabled");
			ret = -EINVAL;
		}

		if (ret) {
			FUNC7(&fs_info->qgroup_lock);
			FUNC5(&fs_info->qgroup_rescan_lock);
			return ret;
		}
		fs_info->qgroup_flags |= BTRFS_QGROUP_STATUS_FLAG_RESCAN;
	}

	FUNC3(&fs_info->qgroup_rescan_progress, 0,
		sizeof(fs_info->qgroup_rescan_progress));
	fs_info->qgroup_rescan_progress.objectid = progress_objectid;
	FUNC2(&fs_info->qgroup_rescan_completion);
	fs_info->qgroup_rescan_running = true;

	FUNC7(&fs_info->qgroup_lock);
	FUNC5(&fs_info->qgroup_rescan_lock);

	FUNC3(&fs_info->qgroup_rescan_work, 0,
	       sizeof(fs_info->qgroup_rescan_work));
	FUNC0(&fs_info->qgroup_rescan_work,
			btrfs_qgroup_rescan_helper,
			btrfs_qgroup_rescan_worker, NULL, NULL);
	return 0;
}