#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct trancevibrator {int speed; TYPE_1__* udev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_OTHER ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (char const*,int,int*) ; 
 struct usb_interface* FUNC2 (struct device*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct trancevibrator* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			 const char *buf, size_t count)
{
	struct usb_interface *intf = FUNC2(dev);
	struct trancevibrator *tv = FUNC4(intf);
	int temp, retval, old;

	retval = FUNC1(buf, 10, &temp);
	if (retval)
		return retval;
	if (temp > 255)
		temp = 255;
	else if (temp < 0)
		temp = 0;
	old = tv->speed;
	tv->speed = temp;

	FUNC0(&tv->udev->dev, "speed = %d\n", tv->speed);

	/* Set speed */
	retval = FUNC3(tv->udev, FUNC5(tv->udev, 0),
				 0x01, /* vendor request: set speed */
				 USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_OTHER,
				 tv->speed, /* speed value */
				 0, NULL, 0, USB_CTRL_GET_TIMEOUT);
	if (retval) {
		tv->speed = old;
		FUNC0(&tv->udev->dev, "retval = %d\n", retval);
		return retval;
	}
	return count;
}