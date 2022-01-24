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
struct scsi_device {int dummy; } ;
struct scsi_cd {struct scsi_device* device; } ;
struct cdrom_device_info {struct scsi_cd* handle; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_device*) ; 

__attribute__((used)) static int FUNC1(struct cdrom_device_info *cdi, int purpose)
{
	struct scsi_cd *cd = cdi->handle;
	struct scsi_device *sdev = cd->device;
	int retval;

	/*
	 * If the device is in error recovery, wait until it is done.
	 * If the device is offline, then disallow any access to it.
	 */
	retval = -ENXIO;
	if (!FUNC0(sdev))
		goto error_out;

	return 0;

error_out:
	return retval;	
}