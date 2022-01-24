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
struct usb_bus {int busnum; int /*<<< orphan*/  controller; } ;

/* Variables and functions */
 int E2BIG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_MAXBUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct usb_bus*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_bus_idr ; 
 int /*<<< orphan*/  usb_bus_idr_lock ; 
 int /*<<< orphan*/  FUNC5 (struct usb_bus*) ; 
 int /*<<< orphan*/  usbcore_name ; 

__attribute__((used)) static int FUNC6(struct usb_bus *bus)
{
	int result = -E2BIG;
	int busnum;

	FUNC2(&usb_bus_idr_lock);
	busnum = FUNC1(&usb_bus_idr, bus, 1, USB_MAXBUS, GFP_KERNEL);
	if (busnum < 0) {
		FUNC4("%s: failed to get bus number\n", usbcore_name);
		goto error_find_busnum;
	}
	bus->busnum = busnum;
	FUNC3(&usb_bus_idr_lock);

	FUNC5(bus);

	FUNC0 (bus->controller, "new USB bus registered, assigned bus "
		  "number %d\n", bus->busnum);
	return 0;

error_find_busnum:
	FUNC3(&usb_bus_idr_lock);
	return result;
}