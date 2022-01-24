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
struct usb_device {int speed; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  USB_SPEED_FULL 134 
#define  USB_SPEED_HIGH 133 
#define  USB_SPEED_LOW 132 
#define  USB_SPEED_SUPER 131 
#define  USB_SPEED_SUPER_PLUS 130 
#define  USB_SPEED_UNKNOWN 129 
#define  USB_SPEED_WIRELESS 128 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 struct usb_device* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev, struct device_attribute *attr,
			  char *buf)
{
	struct usb_device *udev;
	char *speed;

	udev = FUNC1(dev);

	switch (udev->speed) {
	case USB_SPEED_LOW:
		speed = "1.5";
		break;
	case USB_SPEED_UNKNOWN:
	case USB_SPEED_FULL:
		speed = "12";
		break;
	case USB_SPEED_HIGH:
		speed = "480";
		break;
	case USB_SPEED_WIRELESS:
		speed = "480";
		break;
	case USB_SPEED_SUPER:
		speed = "5000";
		break;
	case USB_SPEED_SUPER_PLUS:
		speed = "10000";
		break;
	default:
		speed = "unknown";
	}
	return FUNC0(buf, "%s\n", speed);
}