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
struct lvs_rh {unsigned long portnum; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  USB_PORT_FEAT_U1_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 struct usb_device* FUNC1 (struct usb_interface*) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int FUNC3 (struct usb_device*,unsigned long,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC4 (struct device*) ; 
 struct lvs_rh* FUNC5 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct usb_interface *intf = FUNC4(dev);
	struct usb_device *hdev = FUNC1(intf);
	struct lvs_rh *lvs = FUNC5(intf);
	unsigned long val;
	int ret;

	ret = FUNC2(buf, 10, &val);
	if (ret < 0) {
		FUNC0(dev, "couldn't parse string %d\n", ret);
		return ret;
	}

	if (val > 127)
		return -EINVAL;

	ret = FUNC3(hdev, lvs->portnum | (val << 8),
			USB_PORT_FEAT_U1_TIMEOUT);
	if (ret < 0) {
		FUNC0(dev, "Error %d while setting U1 timeout %ld\n", ret, val);
		return ret;
	}

	return count;
}