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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct pqi_scsi_dev {int target_lun_valid; scalar_t__ is_external_raid_device; int /*<<< orphan*/ * scsi3addr; } ;

/* Variables and functions */
 int PQI_EXTERNAL_RAID_VOLUME_BUS ; 
 int PQI_HBA_BUS ; 
 int PQI_PHYSICAL_DEVICE_BUS ; 
 int PQI_RAID_VOLUME_BUS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct pqi_scsi_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pqi_scsi_dev*,int,int,int) ; 

__attribute__((used)) static void FUNC4(struct pqi_scsi_dev *device)
{
	u8 *scsi3addr;
	u32 lunid;
	int bus;
	int target;
	int lun;

	scsi3addr = device->scsi3addr;
	lunid = FUNC0(scsi3addr);

	if (FUNC1(scsi3addr)) {
		/* The specified device is the controller. */
		FUNC3(device, PQI_HBA_BUS, 0, lunid & 0x3fff);
		device->target_lun_valid = true;
		return;
	}

	if (FUNC2(device)) {
		if (device->is_external_raid_device) {
			bus = PQI_EXTERNAL_RAID_VOLUME_BUS;
			target = (lunid >> 16) & 0x3fff;
			lun = lunid & 0xff;
		} else {
			bus = PQI_RAID_VOLUME_BUS;
			target = 0;
			lun = lunid & 0x3fff;
		}
		FUNC3(device, bus, target, lun);
		device->target_lun_valid = true;
		return;
	}

	/*
	 * Defer target and LUN assignment for non-controller physical devices
	 * because the SAS transport layer will make these assignments later.
	 */
	FUNC3(device, PQI_PHYSICAL_DEVICE_BUS, 0, 0);
}