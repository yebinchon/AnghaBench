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
struct usb_port {int usb3_lpm_u1_permit; int usb3_lpm_u2_permit; struct usb_device* child; } ;
struct usb_hcd {int /*<<< orphan*/  bandwidth_mutex; } ;
struct usb_device {int /*<<< orphan*/  bus; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 struct usb_hcd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 
 struct usb_port* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
			       struct device_attribute *attr,
			       const char *buf, size_t count)
{
	struct usb_port *port_dev = FUNC4(dev);
	struct usb_device *udev = port_dev->child;
	struct usb_hcd *hcd;

	if (!FUNC3(buf, "u1_u2", 5)) {
		port_dev->usb3_lpm_u1_permit = 1;
		port_dev->usb3_lpm_u2_permit = 1;

	} else if (!FUNC3(buf, "u1", 2)) {
		port_dev->usb3_lpm_u1_permit = 1;
		port_dev->usb3_lpm_u2_permit = 0;

	} else if (!FUNC3(buf, "u2", 2)) {
		port_dev->usb3_lpm_u1_permit = 0;
		port_dev->usb3_lpm_u2_permit = 1;

	} else if (!FUNC3(buf, "0", 1)) {
		port_dev->usb3_lpm_u1_permit = 0;
		port_dev->usb3_lpm_u2_permit = 0;
	} else
		return -EINVAL;

	/* If device is connected to the port, disable or enable lpm
	 * to make new u1 u2 setting take effect immediately.
	 */
	if (udev) {
		hcd = FUNC0(udev->bus);
		if (!hcd)
			return -EINVAL;
		FUNC7(udev);
		FUNC1(hcd->bandwidth_mutex);
		if (!FUNC5(udev))
			FUNC6(udev);
		FUNC2(hcd->bandwidth_mutex);
		FUNC8(udev);
	}

	return count;
}