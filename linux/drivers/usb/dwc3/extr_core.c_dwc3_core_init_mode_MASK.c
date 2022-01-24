#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dwc3 {int dr_mode; int /*<<< orphan*/  drd_work; int /*<<< orphan*/  usb3_generic_phy; int /*<<< orphan*/  usb2_generic_phy; TYPE_1__* usb2_phy; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  otg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_GCTL_PRTCAP_DEVICE ; 
 int /*<<< orphan*/  DWC3_GCTL_PRTCAP_HOST ; 
 int EINVAL ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHY_MODE_USB_DEVICE ; 
 int /*<<< orphan*/  PHY_MODE_USB_HOST ; 
#define  USB_DR_MODE_HOST 130 
#define  USB_DR_MODE_OTG 129 
#define  USB_DR_MODE_PERIPHERAL 128 
 int /*<<< orphan*/  __dwc3_set_mode ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int FUNC2 (struct dwc3*) ; 
 int FUNC3 (struct dwc3*) ; 
 int FUNC4 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dwc3 *dwc)
{
	struct device *dev = dwc->dev;
	int ret;

	switch (dwc->dr_mode) {
	case USB_DR_MODE_PERIPHERAL:
		FUNC5(dwc, DWC3_GCTL_PRTCAP_DEVICE);

		if (dwc->usb2_phy)
			FUNC6(dwc->usb2_phy->otg, false);
		FUNC7(dwc->usb2_generic_phy, PHY_MODE_USB_DEVICE);
		FUNC7(dwc->usb3_generic_phy, PHY_MODE_USB_DEVICE);

		ret = FUNC3(dwc);
		if (ret) {
			if (ret != -EPROBE_DEFER)
				FUNC1(dev, "failed to initialize gadget\n");
			return ret;
		}
		break;
	case USB_DR_MODE_HOST:
		FUNC5(dwc, DWC3_GCTL_PRTCAP_HOST);

		if (dwc->usb2_phy)
			FUNC6(dwc->usb2_phy->otg, true);
		FUNC7(dwc->usb2_generic_phy, PHY_MODE_USB_HOST);
		FUNC7(dwc->usb3_generic_phy, PHY_MODE_USB_HOST);

		ret = FUNC4(dwc);
		if (ret) {
			if (ret != -EPROBE_DEFER)
				FUNC1(dev, "failed to initialize host\n");
			return ret;
		}
		break;
	case USB_DR_MODE_OTG:
		FUNC0(&dwc->drd_work, __dwc3_set_mode);
		ret = FUNC2(dwc);
		if (ret) {
			if (ret != -EPROBE_DEFER)
				FUNC1(dev, "failed to initialize dual-role\n");
			return ret;
		}
		break;
	default:
		FUNC1(dev, "Unsupported mode of operation %d\n", dwc->dr_mode);
		return -EINVAL;
	}

	return 0;
}