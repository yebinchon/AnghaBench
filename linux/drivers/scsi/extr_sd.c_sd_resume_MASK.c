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
struct scsi_disk {int /*<<< orphan*/  opal_dev; TYPE_1__* device; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  manage_start_stop; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_NOTICE ; 
 struct scsi_disk* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_disk*,char*) ; 
 int FUNC3 (struct scsi_disk*,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct scsi_disk *sdkp = FUNC0(dev);
	int ret;

	if (!sdkp)	/* E.g.: runtime resume at the start of sd_probe() */
		return 0;

	if (!sdkp->device->manage_start_stop)
		return 0;

	FUNC2(KERN_NOTICE, sdkp, "Starting disk\n");
	ret = FUNC3(sdkp, 1);
	if (!ret)
		FUNC1(sdkp->opal_dev);
	return ret;
}