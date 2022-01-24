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
 int /*<<< orphan*/  USB_PORT_FEAT_BH_PORT_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct usb_device* FUNC1 (struct usb_interface*) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC3 (struct device*) ; 
 struct lvs_rh* FUNC4 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct usb_interface *intf = FUNC3(dev);
	struct usb_device *hdev = FUNC1(intf);
	struct lvs_rh *lvs = FUNC4(intf);
	int ret;

	ret = FUNC2(hdev, lvs->portnum,
			USB_PORT_FEAT_BH_PORT_RESET);
	if (ret < 0) {
		FUNC0(dev, "can't issue warm reset %d\n", ret);
		return ret;
	}

	return count;
}