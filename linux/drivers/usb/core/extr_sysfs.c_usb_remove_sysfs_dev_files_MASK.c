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
struct device {int dummy; } ;
struct usb_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_bin_attr_descriptors ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

void FUNC5(struct usb_device *udev)
{
	struct device *dev = &udev->dev;

	if (FUNC1(udev))
		FUNC2(dev);

	FUNC4(dev);
	FUNC3(dev);
	FUNC0(dev, &dev_bin_attr_descriptors);
}