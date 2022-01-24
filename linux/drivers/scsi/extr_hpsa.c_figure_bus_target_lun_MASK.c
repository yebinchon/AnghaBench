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
struct hpsa_scsi_dev_t {scalar_t__ external; int /*<<< orphan*/  rev; } ;
struct ctlr_info {int dummy; } ;

/* Variables and functions */
 int HPSA_EXTERNAL_RAID_VOLUME_BUS ; 
 int HPSA_HBA_BUS ; 
 int HPSA_LEGACY_HBA_BUS ; 
 int HPSA_PHYSICAL_DEVICE_BUS ; 
 int HPSA_RAID_VOLUME_BUS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hpsa_scsi_dev_t*,int,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ctlr_info *h,
	u8 *lunaddrbytes, struct hpsa_scsi_dev_t *device)
{
	u32 lunid = FUNC0(lunaddrbytes);

	if (!FUNC3(lunaddrbytes)) {
		/* physical device, target and lun filled in later */
		if (FUNC2(lunaddrbytes)) {
			int bus = HPSA_HBA_BUS;

			if (!device->rev)
				bus = HPSA_LEGACY_HBA_BUS;
			FUNC1(device,
					bus, 0, lunid & 0x3fff);
		} else
			/* defer target, lun assignment for physical devices */
			FUNC1(device,
					HPSA_PHYSICAL_DEVICE_BUS, -1, -1);
		return;
	}
	/* It's a logical device */
	if (device->external) {
		FUNC1(device,
			HPSA_EXTERNAL_RAID_VOLUME_BUS, (lunid >> 16) & 0x3fff,
			lunid & 0x00ff);
		return;
	}
	FUNC1(device, HPSA_RAID_VOLUME_BUS,
				0, lunid & 0x3fff);
}