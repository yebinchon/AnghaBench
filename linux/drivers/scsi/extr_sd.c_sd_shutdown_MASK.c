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
struct scsi_disk {TYPE_1__* device; scalar_t__ media_present; scalar_t__ WCE; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ manage_start_stop; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_NOTICE ; 
 scalar_t__ SYSTEM_RESTART ; 
 struct scsi_disk* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_disk*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_disk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_disk*,int /*<<< orphan*/ *) ; 
 scalar_t__ system_state ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct scsi_disk *sdkp = FUNC0(dev);

	if (!sdkp)
		return;         /* this can happen */

	if (FUNC1(dev))
		return;

	if (sdkp->WCE && sdkp->media_present) {
		FUNC2(KERN_NOTICE, sdkp, "Synchronizing SCSI cache\n");
		FUNC4(sdkp, NULL);
	}

	if (system_state != SYSTEM_RESTART && sdkp->device->manage_start_stop) {
		FUNC2(KERN_NOTICE, sdkp, "Stopping disk\n");
		FUNC3(sdkp, 0);
	}
}