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
struct usb_interface {int minor; } ;
struct usb_ftdi {int disconnected; TYPE_1__* udev; scalar_t__ registered; scalar_t__ initialized; scalar_t__ enumerated; scalar_t__ synchronized; int /*<<< orphan*/  platform_dev; struct usb_class_driver* class; } ;
struct usb_class_driver {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ftdi*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ftdi*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ftdi*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_ftdi*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ftdi*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_ftdi*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*,struct usb_class_driver*) ; 
 struct usb_ftdi* FUNC9 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct usb_interface *interface)
{
	struct usb_ftdi *ftdi = FUNC9(interface);
	ftdi->disconnected += 1;
	if (ftdi->class) {
		int minor = interface->minor;
		struct usb_class_driver *class = ftdi->class;
		FUNC10(interface, NULL);
		FUNC8(interface, class);
		FUNC0(&ftdi->udev->dev, "USB FTDI U132 jtag interface on minor %d now disconnected\n",
			 minor);
	} else {
		FUNC6(ftdi);
		FUNC1(ftdi);
		FUNC5(ftdi);
		FUNC2(ftdi);
		FUNC3(ftdi);
		if (ftdi->registered) {
			FUNC7(&ftdi->platform_dev);
			ftdi->synchronized = 0;
			ftdi->enumerated = 0;
			ftdi->initialized = 0;
			ftdi->registered = 0;
		}
		ftdi->disconnected += 1;
		FUNC10(interface, NULL);
		FUNC0(&ftdi->udev->dev, "USB FTDI U132 host controller interface now disconnected\n");
	}
	FUNC4(ftdi);
}