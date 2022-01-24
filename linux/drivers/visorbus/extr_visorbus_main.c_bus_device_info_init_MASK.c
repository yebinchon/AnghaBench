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
struct visor_vbus_deviceinfo {int /*<<< orphan*/  infostrs; int /*<<< orphan*/  drvname; int /*<<< orphan*/  devtype; } ;
struct TYPE_2__ {char const* release; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct visor_vbus_deviceinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 TYPE_1__* FUNC2 () ; 

__attribute__((used)) static void FUNC3(
		struct visor_vbus_deviceinfo *bus_device_info_ptr,
		const char *dev_type, const char *drv_name)
{
	FUNC0(bus_device_info_ptr, 0, sizeof(struct visor_vbus_deviceinfo));
	FUNC1(bus_device_info_ptr->devtype,
		 sizeof(bus_device_info_ptr->devtype),
		 "%s", (dev_type) ? dev_type : "unknownType");
	FUNC1(bus_device_info_ptr->drvname,
		 sizeof(bus_device_info_ptr->drvname),
		 "%s", (drv_name) ? drv_name : "unknownDriver");
	FUNC1(bus_device_info_ptr->infostrs,
		 sizeof(bus_device_info_ptr->infostrs), "kernel ver. %s",
		 FUNC2()->release);
}