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
struct scsi_disk {int /*<<< orphan*/  openers; scalar_t__ write_prot; int /*<<< orphan*/  media_present; struct scsi_device* device; } ;
struct scsi_device {scalar_t__ removable; } ;
struct block_device {int /*<<< orphan*/  bd_disk; } ;
typedef  int fmode_t ;

/* Variables and functions */
 int ENOMEDIUM ; 
 int ENXIO ; 
 int EROFS ; 
 int FMODE_NDELAY ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCSI_REMOVAL_PREVENT ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct block_device*) ; 
 scalar_t__ FUNC3 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*) ; 
 struct scsi_disk* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_disk*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct scsi_disk*,char*) ; 

__attribute__((used)) static int FUNC9(struct block_device *bdev, fmode_t mode)
{
	struct scsi_disk *sdkp = FUNC5(bdev->bd_disk);
	struct scsi_device *sdev;
	int retval;

	if (!sdkp)
		return -ENXIO;

	FUNC0(3, FUNC8(KERN_INFO, sdkp, "sd_open\n"));

	sdev = sdkp->device;

	/*
	 * If the device is in error recovery, wait until it is done.
	 * If the device is offline, then disallow any access to it.
	 */
	retval = -ENXIO;
	if (!FUNC3(sdev))
		goto error_out;

	if (sdev->removable || sdkp->write_prot)
		FUNC2(bdev);

	/*
	 * If the drive is empty, just let the open fail.
	 */
	retval = -ENOMEDIUM;
	if (sdev->removable && !sdkp->media_present && !(mode & FMODE_NDELAY))
		goto error_out;

	/*
	 * If the device has the write protect tab set, have the open fail
	 * if the user expects to be able to write to the thing.
	 */
	retval = -EROFS;
	if (sdkp->write_prot && (mode & FMODE_WRITE))
		goto error_out;

	/*
	 * It is possible that the disk changing stuff resulted in
	 * the device being taken offline.  If this is the case,
	 * report this to the user, and don't pretend that the
	 * open actually succeeded.
	 */
	retval = -ENXIO;
	if (!FUNC4(sdev))
		goto error_out;

	if ((FUNC1(&sdkp->openers) == 1) && sdev->removable) {
		if (FUNC3(sdev))
			FUNC7(sdev, SCSI_REMOVAL_PREVENT);
	}

	return 0;

error_out:
	FUNC6(sdkp);
	return retval;	
}