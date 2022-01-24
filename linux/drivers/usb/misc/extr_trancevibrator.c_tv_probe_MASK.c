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
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct trancevibrator {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct usb_device* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct trancevibrator*) ; 
 struct trancevibrator* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,struct trancevibrator*) ; 

__attribute__((used)) static int FUNC5(struct usb_interface *interface,
		    const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC0(interface);
	struct trancevibrator *dev;
	int retval;

	dev = FUNC2(sizeof(struct trancevibrator), GFP_KERNEL);
	if (!dev) {
		retval = -ENOMEM;
		goto error;
	}

	dev->udev = FUNC3(udev);
	FUNC4(interface, dev);

	return 0;

error:
	FUNC1(dev);
	return retval;
}