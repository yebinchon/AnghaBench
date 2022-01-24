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
struct phy_dev {struct phy_dev* priv_dev; } ;
struct lte_udev {struct lte_udev* priv_dev; } ;

/* Variables and functions */
 struct usb_device* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_dev*) ; 
 struct phy_dev* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*) ; 

__attribute__((used)) static void FUNC6(struct usb_interface *intf)
{
	struct phy_dev *phy_dev;
	struct lte_udev *udev;
	struct usb_device *usbdev;

	usbdev = FUNC0(intf);
	phy_dev = FUNC4(intf);

	udev = phy_dev->priv_dev;
	FUNC3(phy_dev);

	FUNC2(udev);

	FUNC1(udev);
	udev = NULL;

	FUNC1(phy_dev);
	phy_dev = NULL;

	FUNC5(usbdev);
}