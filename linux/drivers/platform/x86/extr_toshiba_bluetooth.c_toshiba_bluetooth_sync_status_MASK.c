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
struct toshiba_bluetooth_dev {int killswitch; int plugged; int powered; TYPE_1__* acpi_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int BT_KILLSWITCH_MASK ; 
 int BT_PLUGGED_MASK ; 
 int BT_POWER_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct toshiba_bluetooth_dev *bt_dev)
{
	int status;

	status = FUNC2(bt_dev->acpi_dev->handle);
	if (status < 0) {
		FUNC1("Could not sync bluetooth device status\n");
		return status;
	}

	bt_dev->killswitch = (status & BT_KILLSWITCH_MASK) ? true : false;
	bt_dev->plugged = (status & BT_PLUGGED_MASK) ? true : false;
	bt_dev->powered = (status & BT_POWER_MASK) ? true : false;

	FUNC0("Bluetooth status %d killswitch %d plugged %d powered %d\n",
		 status, bt_dev->killswitch, bt_dev->plugged, bt_dev->powered);

	return 0;
}