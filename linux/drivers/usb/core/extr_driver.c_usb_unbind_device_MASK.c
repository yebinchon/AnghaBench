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
struct usb_device_driver {int /*<<< orphan*/  supports_autosuspend; int /*<<< orphan*/  (* disconnect ) (struct usb_device*) ;} ;
struct usb_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_device*) ; 
 struct usb_device* FUNC1 (struct device*) ; 
 struct usb_device_driver* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct usb_device *udev = FUNC1(dev);
	struct usb_device_driver *udriver = FUNC2(dev->driver);

	udriver->disconnect(udev);
	if (!udriver->supports_autosuspend)
		FUNC3(udev);
	return 0;
}