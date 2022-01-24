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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct aac_dev {scalar_t__ scan_counter; TYPE_1__** hba_map; } ;
struct TYPE_2__ {scalar_t__ scan_counter; int /*<<< orphan*/  devtype; scalar_t__ rmw_nexus; } ;

/* Variables and functions */
 int /*<<< orphan*/  AAC_DEVTYPE_ARC_RAW ; 
 int /*<<< orphan*/  AAC_DEVTYPE_NATIVE_RAW ; 
 int /*<<< orphan*/  AAC_DEVTYPE_RAID_MEMBER ; 
 scalar_t__ AAC_MAX_BUSES ; 
 scalar_t__ AAC_MAX_TARGETS ; 
 scalar_t__ FUNC0 (struct aac_dev*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct aac_dev*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct aac_dev*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct aac_dev*) ; 
 scalar_t__ FUNC4 (struct aac_dev*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct aac_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct aac_dev*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct aac_dev *dev)
{
	/* ok and extended reporting */
	u32 lun_count, nexus;
	u32 i, bus, target;
	u8 expose_flag, attribs;

	lun_count = FUNC3(dev);

	dev->scan_counter++;

	for (i = 0; i < lun_count; ++i) {

		bus = FUNC1(dev, i);
		target = FUNC5(dev, i);
		expose_flag = FUNC2(dev, i);
		attribs = FUNC0(dev, i);
		nexus = FUNC4(dev, i);

		if (bus >= AAC_MAX_BUSES || target >= AAC_MAX_TARGETS)
			continue;

		if (expose_flag != 0) {
			dev->hba_map[bus][target].devtype =
				AAC_DEVTYPE_RAID_MEMBER;
			continue;
		}

		if (nexus != 0 && (attribs & 8)) {
			dev->hba_map[bus][target].devtype =
				AAC_DEVTYPE_NATIVE_RAW;
			dev->hba_map[bus][target].rmw_nexus =
					nexus;
		} else
			dev->hba_map[bus][target].devtype =
				AAC_DEVTYPE_ARC_RAW;

		dev->hba_map[bus][target].scan_counter = dev->scan_counter;

		FUNC6(dev, bus, target);
	}
}