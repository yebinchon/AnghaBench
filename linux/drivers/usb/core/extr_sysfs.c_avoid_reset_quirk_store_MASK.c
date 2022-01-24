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
struct usb_device {int /*<<< orphan*/  quirks; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINTR ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  USB_QUIRK_RESET ; 
 int FUNC0 (char const*,char*,int*) ; 
 struct usb_device* FUNC1 (struct device*) ; 
 int FUNC2 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				      struct device_attribute *attr,
				      const char *buf, size_t count)
{
	struct usb_device	*udev = FUNC1(dev);
	int			val, rc;

	if (FUNC0(buf, "%d", &val) != 1 || val < 0 || val > 1)
		return -EINVAL;
	rc = FUNC2(udev);
	if (rc < 0)
		return -EINTR;
	if (val)
		udev->quirks |= USB_QUIRK_RESET;
	else
		udev->quirks &= ~USB_QUIRK_RESET;
	FUNC3(udev);
	return count;
}