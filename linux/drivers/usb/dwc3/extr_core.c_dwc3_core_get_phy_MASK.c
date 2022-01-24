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
struct dwc3 {int /*<<< orphan*/ * usb3_generic_phy; int /*<<< orphan*/ * usb2_generic_phy; int /*<<< orphan*/ * usb3_phy; int /*<<< orphan*/ * usb2_phy; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOSYS ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USB_PHY_TYPE_USB2 ; 
 int /*<<< orphan*/  USB_PHY_TYPE_USB3 ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,char*,int) ; 

__attribute__((used)) static int FUNC6(struct dwc3 *dwc)
{
	struct device		*dev = dwc->dev;
	struct device_node	*node = dev->of_node;
	int ret;

	if (node) {
		dwc->usb2_phy = FUNC5(dev, "usb-phy", 0);
		dwc->usb3_phy = FUNC5(dev, "usb-phy", 1);
	} else {
		dwc->usb2_phy = FUNC4(dev, USB_PHY_TYPE_USB2);
		dwc->usb3_phy = FUNC4(dev, USB_PHY_TYPE_USB3);
	}

	if (FUNC0(dwc->usb2_phy)) {
		ret = FUNC1(dwc->usb2_phy);
		if (ret == -ENXIO || ret == -ENODEV) {
			dwc->usb2_phy = NULL;
		} else if (ret == -EPROBE_DEFER) {
			return ret;
		} else {
			FUNC2(dev, "no usb2 phy configured\n");
			return ret;
		}
	}

	if (FUNC0(dwc->usb3_phy)) {
		ret = FUNC1(dwc->usb3_phy);
		if (ret == -ENXIO || ret == -ENODEV) {
			dwc->usb3_phy = NULL;
		} else if (ret == -EPROBE_DEFER) {
			return ret;
		} else {
			FUNC2(dev, "no usb3 phy configured\n");
			return ret;
		}
	}

	dwc->usb2_generic_phy = FUNC3(dev, "usb2-phy");
	if (FUNC0(dwc->usb2_generic_phy)) {
		ret = FUNC1(dwc->usb2_generic_phy);
		if (ret == -ENOSYS || ret == -ENODEV) {
			dwc->usb2_generic_phy = NULL;
		} else if (ret == -EPROBE_DEFER) {
			return ret;
		} else {
			FUNC2(dev, "no usb2 phy configured\n");
			return ret;
		}
	}

	dwc->usb3_generic_phy = FUNC3(dev, "usb3-phy");
	if (FUNC0(dwc->usb3_generic_phy)) {
		ret = FUNC1(dwc->usb3_generic_phy);
		if (ret == -ENOSYS || ret == -ENODEV) {
			dwc->usb3_generic_phy = NULL;
		} else if (ret == -EPROBE_DEFER) {
			return ret;
		} else {
			FUNC2(dev, "no usb3 phy configured\n");
			return ret;
		}
	}

	return 0;
}