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
struct usb_device {int dummy; } ;
struct lvs_rh {int /*<<< orphan*/  portnum; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  USB_PORT_FEAT_SUSPEND ; 
 struct usb_device* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct usb_device* FUNC3 (struct usb_interface*) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC5 (struct device*) ; 
 struct lvs_rh* FUNC6 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct usb_interface *intf = FUNC5(dev);
	struct usb_device *hdev = FUNC3(intf);
	struct lvs_rh *lvs = FUNC6(intf);
	struct usb_device *udev;
	int ret;

	udev = FUNC0(intf);
	if (!udev) {
		FUNC2(dev, "failed to create lvs device\n");
		return -ENOMEM;
	}

	ret = FUNC4(hdev, lvs->portnum,
			USB_PORT_FEAT_SUSPEND);
	if (ret < 0)
		FUNC2(dev, "can't issue U3 exit %d\n", ret);

	FUNC1(udev);

	if (ret < 0)
		return ret;

	return count;
}