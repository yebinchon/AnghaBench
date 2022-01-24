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
struct usb_device {int portnum; int devnum; scalar_t__ wusb; struct usb_bus* bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  devicemap; } ;
struct usb_bus {int devnum_next; int /*<<< orphan*/  devnum_next_mutex; TYPE_1__ devmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct usb_device *udev)
{
	int		devnum;
	struct usb_bus	*bus = udev->bus;

	/* be safe when more hub events are proceed in parallel */
	FUNC2(&bus->devnum_next_mutex);
	if (udev->wusb) {
		devnum = udev->portnum + 1;
		FUNC0(FUNC5(devnum, bus->devmap.devicemap));
	} else {
		/* Try to allocate the next devnum beginning at
		 * bus->devnum_next. */
		devnum = FUNC1(bus->devmap.devicemap, 128,
					    bus->devnum_next);
		if (devnum >= 128)
			devnum = FUNC1(bus->devmap.devicemap,
						    128, 1);
		bus->devnum_next = (devnum >= 127 ? 1 : devnum + 1);
	}
	if (devnum < 128) {
		FUNC4(devnum, bus->devmap.devicemap);
		udev->devnum = devnum;
	}
	FUNC3(&bus->devnum_next_mutex);
}