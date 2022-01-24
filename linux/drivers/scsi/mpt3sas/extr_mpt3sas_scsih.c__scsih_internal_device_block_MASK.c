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
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int FUNC0 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_device*,char*,int,...) ; 

__attribute__((used)) static void
FUNC2(struct scsi_device *sdev,
			struct MPT3SAS_DEVICE *sas_device_priv_data)
{
	int r = 0;

	FUNC1(KERN_INFO, sdev, "device_block, handle(0x%04x)\n",
	    sas_device_priv_data->sas_target->handle);
	sas_device_priv_data->block = 1;

	r = FUNC0(sdev);
	if (r == -EINVAL)
		FUNC1(KERN_WARNING, sdev,
		    "device_block failed with return(%d) for handle(0x%04x)\n",
		    r, sas_device_priv_data->sas_target->handle);
}