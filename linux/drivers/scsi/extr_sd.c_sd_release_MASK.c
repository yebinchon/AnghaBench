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
struct scsi_disk {int /*<<< orphan*/  openers; struct scsi_device* device; } ;
struct scsi_device {scalar_t__ removable; } ;
struct gendisk {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCSI_REMOVAL_ALLOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct scsi_device*) ; 
 struct scsi_disk* FUNC3 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_disk*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scsi_disk*,char*) ; 

__attribute__((used)) static void FUNC7(struct gendisk *disk, fmode_t mode)
{
	struct scsi_disk *sdkp = FUNC3(disk);
	struct scsi_device *sdev = sdkp->device;

	FUNC0(3, FUNC6(KERN_INFO, sdkp, "sd_release\n"));

	if (FUNC1(&sdkp->openers) == 0 && sdev->removable) {
		if (FUNC2(sdev))
			FUNC5(sdev, SCSI_REMOVAL_ALLOW);
	}

	FUNC4(sdkp);
}