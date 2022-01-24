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
struct scsi_device {int dummy; } ;
struct MPT3SAS_DEVICE {int block; TYPE_1__* sas_target; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  SDEV_RUNNING ; 
 int FUNC0 (struct scsi_device*) ; 
 int FUNC1 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_device*,char*,int,...) ; 

__attribute__((used)) static void
FUNC3(struct scsi_device *sdev,
			struct MPT3SAS_DEVICE *sas_device_priv_data)
{
	int r = 0;

	FUNC2(KERN_WARNING, sdev, "device_unblock and setting to running, "
	    "handle(0x%04x)\n", sas_device_priv_data->sas_target->handle);
	sas_device_priv_data->block = 0;
	r = FUNC1(sdev, SDEV_RUNNING);
	if (r == -EINVAL) {
		/* The device has been set to SDEV_RUNNING by SD layer during
		 * device addition but the request queue is still stopped by
		 * our earlier block call. We need to perform a block again
		 * to get the device to SDEV_BLOCK and then to SDEV_RUNNING */

		FUNC2(KERN_WARNING, sdev,
		    "device_unblock failed with return(%d) for handle(0x%04x) "
		    "performing a block followed by an unblock\n",
		    r, sas_device_priv_data->sas_target->handle);
		sas_device_priv_data->block = 1;
		r = FUNC0(sdev);
		if (r)
			FUNC2(KERN_WARNING, sdev, "retried device_block "
			    "failed with return(%d) for handle(0x%04x)\n",
			    r, sas_device_priv_data->sas_target->handle);

		sas_device_priv_data->block = 0;
		r = FUNC1(sdev, SDEV_RUNNING);
		if (r)
			FUNC2(KERN_WARNING, sdev, "retried device_unblock"
			    " failed with return(%d) for handle(0x%04x)\n",
			    r, sas_device_priv_data->sas_target->handle);
	}
}