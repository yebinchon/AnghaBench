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
struct omap_control_phy {scalar_t__ type; } ;
struct device {int dummy; } ;
typedef  enum omap_control_usb_mode { ____Placeholder_omap_control_usb_mode } omap_control_usb_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ OMAP_CTRL_TYPE_OTGHS ; 
#define  USB_MODE_DEVICE 130 
#define  USB_MODE_DISCONNECT 129 
#define  USB_MODE_HOST 128 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct omap_control_phy* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_control_phy*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_control_phy*) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_control_phy*) ; 

void FUNC7(struct device *dev,
	enum omap_control_usb_mode mode)
{
	struct omap_control_phy	*ctrl_phy;

	if (FUNC0(dev) || !dev)
		return;

	ctrl_phy = FUNC2(dev);
	if (!ctrl_phy) {
		FUNC1(dev, "Invalid control phy device\n");
		return;
	}

	if (ctrl_phy->type != OMAP_CTRL_TYPE_OTGHS)
		return;

	switch (mode) {
	case USB_MODE_HOST:
		FUNC5(ctrl_phy);
		break;
	case USB_MODE_DEVICE:
		FUNC4(ctrl_phy);
		break;
	case USB_MODE_DISCONNECT:
		FUNC6(ctrl_phy);
		break;
	default:
		FUNC3(dev, "invalid omap control usb mode\n");
	}
}