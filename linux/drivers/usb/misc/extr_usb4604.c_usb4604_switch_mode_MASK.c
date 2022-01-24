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
struct usb4604 {struct device* dev; } ;
struct device {int dummy; } ;
typedef  enum usb4604_mode { ____Placeholder_usb4604_mode } usb4604_mode ;

/* Variables and functions */
 int EINVAL ; 
#define  USB4604_MODE_HUB 129 
#define  USB4604_MODE_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct usb4604*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb4604*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb4604 *hub, enum usb4604_mode mode)
{
	struct device *dev = hub->dev;
	int err = 0;

	switch (mode) {
	case USB4604_MODE_HUB:
		err = FUNC2(hub);
		break;

	case USB4604_MODE_STANDBY:
		FUNC3(hub, 0);
		FUNC0(dev, "switched to STANDBY mode\n");
		break;

	default:
		FUNC1(dev, "unknown mode is requested\n");
		err = -EINVAL;
		break;
	}

	return err;
}