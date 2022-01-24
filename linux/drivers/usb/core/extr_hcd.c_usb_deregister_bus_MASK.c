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
struct usb_bus {int /*<<< orphan*/  busnum; int /*<<< orphan*/  controller; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_bus_idr ; 
 int /*<<< orphan*/  usb_bus_idr_lock ; 
 int /*<<< orphan*/  FUNC4 (struct usb_bus*) ; 

__attribute__((used)) static void FUNC5 (struct usb_bus *bus)
{
	FUNC0 (bus->controller, "USB bus %d deregistered\n", bus->busnum);

	/*
	 * NOTE: make sure that all the devices are removed by the
	 * controller code, as well as having it call this when cleaning
	 * itself up
	 */
	FUNC2(&usb_bus_idr_lock);
	FUNC1(&usb_bus_idr, bus->busnum);
	FUNC3(&usb_bus_idr_lock);

	FUNC4(bus);
}