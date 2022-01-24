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
struct usb_phy_roothub {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_phy_roothub*) ; 
 int FUNC2 (struct usb_phy_roothub*) ; 
 int FUNC3 (struct usb_phy_roothub*) ; 

int FUNC4(struct device *controller_dev,
			   struct usb_phy_roothub *phy_roothub)
{
	int err;

	/* if the device can't wake up the system _exit was called */
	if (!FUNC0(controller_dev)) {
		err = FUNC2(phy_roothub);
		if (err)
			return err;
	}

	err = FUNC3(phy_roothub);

	/* undo _init if _power_on failed */
	if (err && !FUNC0(controller_dev))
		FUNC1(phy_roothub);

	return err;
}