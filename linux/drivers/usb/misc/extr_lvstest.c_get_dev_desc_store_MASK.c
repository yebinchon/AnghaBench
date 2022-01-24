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
struct usb_device_descriptor {int dummy; } ;
struct usb_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PIPE_CONTROL ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_DT_DEVICE ; 
 int /*<<< orphan*/  USB_REQ_GET_DESCRIPTOR ; 
 struct usb_device* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device_descriptor*) ; 
 struct usb_device_descriptor* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC5 (struct device*) ; 
 int FUNC6 (struct usb_device*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,struct usb_device_descriptor*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct usb_interface *intf = FUNC5(dev);
	struct usb_device *udev;
	struct usb_device_descriptor *descriptor;
	int ret;

	descriptor = FUNC4(sizeof(*descriptor), GFP_KERNEL);
	if (!descriptor)
		return -ENOMEM;

	udev = FUNC0(intf);
	if (!udev) {
		FUNC2(dev, "failed to create lvs device\n");
		ret = -ENOMEM;
		goto free_desc;
	}

	ret = FUNC6(udev, (PIPE_CONTROL << 30) | USB_DIR_IN,
			USB_REQ_GET_DESCRIPTOR, USB_DIR_IN, USB_DT_DEVICE << 8,
			0, descriptor, sizeof(*descriptor),
			USB_CTRL_GET_TIMEOUT);
	if (ret < 0)
		FUNC2(dev, "can't read device descriptor %d\n", ret);

	FUNC1(udev);

free_desc:
	FUNC3(descriptor);

	if (ret < 0)
		return ret;

	return count;
}