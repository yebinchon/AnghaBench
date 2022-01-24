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
struct hpsa_scsi_dev_t {int lun; int* scsi3addr; scalar_t__ expose_device; int /*<<< orphan*/  target; int /*<<< orphan*/  bus; } ;
struct ctlr_info {int ndevices; struct hpsa_scsi_dev_t** dev; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HPSA_MAX_DEVICES ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (struct ctlr_info*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ctlr_info*,struct hpsa_scsi_dev_t*,char*) ; 
 scalar_t__ FUNC4 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int*,int) ; 

__attribute__((used)) static int FUNC6(struct ctlr_info *h,
		struct hpsa_scsi_dev_t *device,
		struct hpsa_scsi_dev_t *added[], int *nadded)
{
	/* assumes h->devlock is held */
	int n = h->ndevices;
	int i;
	unsigned char addr1[8], addr2[8];
	struct hpsa_scsi_dev_t *sd;

	if (n >= HPSA_MAX_DEVICES) {
		FUNC0(&h->pdev->dev, "too many devices, some will be "
			"inaccessible.\n");
		return -1;
	}

	/* physical devices do not have lun or target assigned until now. */
	if (device->lun != -1)
		/* Logical device, lun is already assigned. */
		goto lun_assigned;

	/* If this device a non-zero lun of a multi-lun device
	 * byte 4 of the 8-byte LUN addr will contain the logical
	 * unit no, zero otherwise.
	 */
	if (device->scsi3addr[4] == 0) {
		/* This is not a non-zero lun of a multi-lun device */
		if (FUNC2(h, device->scsi3addr,
			device->bus, &device->target, &device->lun) != 0)
			return -1;
		goto lun_assigned;
	}

	/* This is a non-zero lun of a multi-lun device.
	 * Search through our list and find the device which
	 * has the same 8 byte LUN address, excepting byte 4 and 5.
	 * Assign the same bus and target for this new LUN.
	 * Use the logical unit number from the firmware.
	 */
	FUNC5(addr1, device->scsi3addr, 8);
	addr1[4] = 0;
	addr1[5] = 0;
	for (i = 0; i < n; i++) {
		sd = h->dev[i];
		FUNC5(addr2, sd->scsi3addr, 8);
		addr2[4] = 0;
		addr2[5] = 0;
		/* differ only in byte 4 and 5? */
		if (FUNC4(addr1, addr2, 8) == 0) {
			device->bus = sd->bus;
			device->target = sd->target;
			device->lun = device->scsi3addr[4];
			break;
		}
	}
	if (device->lun == -1) {
		FUNC1(&h->pdev->dev, "physical device with no LUN=0,"
			" suspect firmware bug or unsupported hardware "
			"configuration.\n");
		return -1;
	}

lun_assigned:

	h->dev[n] = device;
	h->ndevices++;
	added[*nadded] = device;
	(*nadded)++;
	FUNC3(KERN_INFO, h, device,
		device->expose_device ? "added" : "masked");
	return 0;
}