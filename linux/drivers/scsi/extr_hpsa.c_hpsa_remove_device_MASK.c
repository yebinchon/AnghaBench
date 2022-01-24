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
struct hpsa_scsi_dev_t {int removed; int /*<<< orphan*/  lun; int /*<<< orphan*/  target; int /*<<< orphan*/  bus; } ;
struct ctlr_info {int /*<<< orphan*/  scsi_host; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct hpsa_scsi_dev_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ctlr_info*,struct hpsa_scsi_dev_t*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ctlr_info*,struct hpsa_scsi_dev_t*) ; 
 scalar_t__ FUNC3 (struct hpsa_scsi_dev_t*) ; 
 struct scsi_device* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_device*) ; 

__attribute__((used)) static void FUNC7(struct ctlr_info *h,
			struct hpsa_scsi_dev_t *device)
{
	struct scsi_device *sdev = NULL;

	if (!h->scsi_host)
		return;

	/*
	 * Allow for commands to drain
	 */
	device->removed = 1;
	FUNC2(h, device);

	if (FUNC3(device)) { /* RAID */
		sdev = FUNC4(h->scsi_host, device->bus,
						device->target, device->lun);
		if (sdev) {
			FUNC6(sdev);
			FUNC5(sdev);
		} else {
			/*
			 * We don't expect to get here.  Future commands
			 * to this device will get a selection timeout as
			 * if the device were gone.
			 */
			FUNC1(KERN_WARNING, h, device,
					"didn't find device for removal.");
		}
	} else { /* HBA */

		FUNC0(device);
	}
}