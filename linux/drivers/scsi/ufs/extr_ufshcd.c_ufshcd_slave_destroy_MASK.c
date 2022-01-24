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
struct ufs_hba {TYPE_1__* host; int /*<<< orphan*/ * sdev_ufs_device; } ;
struct scsi_device {int /*<<< orphan*/  lun; int /*<<< orphan*/  host; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 scalar_t__ UFS_UPIU_UFS_DEVICE_WLUN ; 
 struct ufs_hba* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct scsi_device *sdev)
{
	struct ufs_hba *hba;

	hba = FUNC0(sdev->host);
	/* Drop the reference as it won't be needed anymore */
	if (FUNC3(sdev->lun) == UFS_UPIU_UFS_DEVICE_WLUN) {
		unsigned long flags;

		FUNC1(hba->host->host_lock, flags);
		hba->sdev_ufs_device = NULL;
		FUNC2(hba->host->host_lock, flags);
	}
}