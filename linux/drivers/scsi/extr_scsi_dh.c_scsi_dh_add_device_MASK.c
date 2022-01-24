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
struct scsi_device_handler {int dummy; } ;
struct scsi_device {int dummy; } ;

/* Variables and functions */
 struct scsi_device_handler* FUNC0 (char const*) ; 
 char* FUNC1 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,struct scsi_device_handler*) ; 

void FUNC3(struct scsi_device *sdev)
{
	struct scsi_device_handler *devinfo = NULL;
	const char *drv;

	drv = FUNC1(sdev);
	if (drv)
		devinfo = FUNC0(drv);
	/*
	 * device_handler is optional, so ignore errors
	 * from scsi_dh_handler_attach()
	 */
	if (devinfo)
		(void)FUNC2(sdev, devinfo);
}