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
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bDeviceProtocol; int /*<<< orphan*/  bDeviceSubClass; int /*<<< orphan*/  bDeviceClass; int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {scalar_t__ devnum; TYPE_1__ descriptor; int /*<<< orphan*/  bus; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct kobj_uevent_env*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC7 (struct device*) ; 
 struct usb_interface* FUNC8 (struct device*) ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct kobj_uevent_env *env)
{
	struct usb_device *usb_dev;

	if (FUNC3(dev)) {
		usb_dev = FUNC7(dev);
	} else if (FUNC4(dev)) {
		struct usb_interface *intf = FUNC8(dev);

		usb_dev = FUNC2(intf);
	} else {
		return 0;
	}

	if (usb_dev->devnum < 0) {
		/* driver is often null here; dev_dbg() would oops */
		FUNC6("usb %s: already deleted?\n", FUNC1(dev));
		return -ENODEV;
	}
	if (!usb_dev->bus) {
		FUNC6("usb %s: bus removed?\n", FUNC1(dev));
		return -ENODEV;
	}

	/* per-device configurations are common */
	if (FUNC0(env, "PRODUCT=%x/%x/%x",
			   FUNC5(usb_dev->descriptor.idVendor),
			   FUNC5(usb_dev->descriptor.idProduct),
			   FUNC5(usb_dev->descriptor.bcdDevice)))
		return -ENOMEM;

	/* class-based driver binding models */
	if (FUNC0(env, "TYPE=%d/%d/%d",
			   usb_dev->descriptor.bDeviceClass,
			   usb_dev->descriptor.bDeviceSubClass,
			   usb_dev->descriptor.bDeviceProtocol))
		return -ENOMEM;

	return 0;
}