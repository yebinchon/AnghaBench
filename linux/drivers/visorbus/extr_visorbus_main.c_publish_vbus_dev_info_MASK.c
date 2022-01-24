#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct visor_vbus_headerinfo {int dummy; } ;
struct visor_vbus_deviceinfo {int dummy; } ;
struct visor_driver {int /*<<< orphan*/  name; TYPE_2__* channel_types; } ;
struct TYPE_3__ {int /*<<< orphan*/  driver; } ;
struct visor_device {int /*<<< orphan*/  visorchannel; int /*<<< orphan*/  channel_type_guid; TYPE_1__ device; scalar_t__ vbus_hdr_info; int /*<<< orphan*/  chipset_dev_no; int /*<<< orphan*/  chipset_bus_no; } ;
struct TYPE_4__ {char* name; int /*<<< orphan*/  guid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_ROOT_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct visor_vbus_deviceinfo*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chipset_driverinfo ; 
 int /*<<< orphan*/  clientbus_driverinfo ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct visor_driver* FUNC2 (int /*<<< orphan*/ ) ; 
 struct visor_device* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct visor_vbus_headerinfo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct visor_vbus_headerinfo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct visor_vbus_headerinfo*,struct visor_vbus_deviceinfo*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct visor_device *visordev)
{
	int i;
	struct visor_device *bdev;
	struct visor_driver *visordrv;
	u32 bus_no = visordev->chipset_bus_no;
	u32 dev_no = visordev->chipset_dev_no;
	struct visor_vbus_deviceinfo dev_info;
	const char *chan_type_name = NULL;
	struct visor_vbus_headerinfo *hdr_info;

	if (!visordev->device.driver)
		return;
	bdev = FUNC3(bus_no, BUS_ROOT_DEVICE, NULL);
	if (!bdev)
		return;
	hdr_info = (struct visor_vbus_headerinfo *)bdev->vbus_hdr_info;
	if (!hdr_info)
		return;
	visordrv = FUNC2(visordev->device.driver);

	/*
	 * Within the list of device types (by GUID) that the driver
	 * says it supports, find out which one of those types matches
	 * the type of this device, so that we can include the device
	 * type name
	 */
	for (i = 0; visordrv->channel_types[i].name; i++) {
		if (FUNC1(&visordrv->channel_types[i].guid,
			       &visordev->channel_type_guid)) {
			chan_type_name = visordrv->channel_types[i].name;
			break;
		}
	}
	FUNC0(&dev_info, chan_type_name, visordrv->name);
	FUNC6(bdev->visorchannel, hdr_info, &dev_info, dev_no);
	FUNC5(bdev->visorchannel, hdr_info, &chipset_driverinfo);
	FUNC4(bdev->visorchannel, hdr_info,
			    &clientbus_driverinfo);
}