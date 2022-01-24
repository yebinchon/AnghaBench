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
struct usb_hcd {unsigned int dev_policy; } ;
struct usb_device {struct usb_bus* bus; } ;
struct usb_bus {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int USB_DEVICE_AUTHORIZE_ALL ; 
 unsigned int USB_DEVICE_AUTHORIZE_INTERNAL ; 
 struct usb_hcd* FUNC0 (struct usb_bus*) ; 
 int FUNC1 (char const*,char*,unsigned int*) ; 
 struct usb_device* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t size)
{
	ssize_t result;
	unsigned int val;
	struct usb_device *rh_usb_dev = FUNC2(dev);
	struct usb_bus *usb_bus = rh_usb_dev->bus;
	struct usb_hcd *hcd;

	hcd = FUNC0(usb_bus);
	result = FUNC1(buf, "%u\n", &val);
	if (result == 1) {
		hcd->dev_policy = val <= USB_DEVICE_AUTHORIZE_INTERNAL ?
			val : USB_DEVICE_AUTHORIZE_ALL;
		result = size;
	} else {
		result = -EINVAL;
	}
	return result;
}