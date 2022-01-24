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
struct dwc2_hsotg {scalar_t__ dr_mode; int /*<<< orphan*/  dev; } ;
typedef  enum usb_dr_mode { ____Placeholder_usb_dr_mode } usb_dr_mode ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_USB_DWC2_HOST ; 
 int /*<<< orphan*/  CONFIG_USB_DWC2_PERIPHERAL ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int USB_DR_MODE_HOST ; 
 scalar_t__ USB_DR_MODE_OTG ; 
 int USB_DR_MODE_PERIPHERAL ; 
 scalar_t__ USB_DR_MODE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (struct dwc2_hsotg*) ; 
 scalar_t__ FUNC4 (struct dwc2_hsotg*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dwc2_hsotg *hsotg)
{
	enum usb_dr_mode mode;

	hsotg->dr_mode = FUNC5(hsotg->dev);
	if (hsotg->dr_mode == USB_DR_MODE_UNKNOWN)
		hsotg->dr_mode = USB_DR_MODE_OTG;

	mode = hsotg->dr_mode;

	if (FUNC3(hsotg)) {
		if (FUNC0(CONFIG_USB_DWC2_HOST)) {
			FUNC1(hsotg->dev,
				"Controller does not support host mode.\n");
			return -EINVAL;
		}
		mode = USB_DR_MODE_PERIPHERAL;
	} else if (FUNC4(hsotg)) {
		if (FUNC0(CONFIG_USB_DWC2_PERIPHERAL)) {
			FUNC1(hsotg->dev,
				"Controller does not support device mode.\n");
			return -EINVAL;
		}
		mode = USB_DR_MODE_HOST;
	} else {
		if (FUNC0(CONFIG_USB_DWC2_HOST))
			mode = USB_DR_MODE_HOST;
		else if (FUNC0(CONFIG_USB_DWC2_PERIPHERAL))
			mode = USB_DR_MODE_PERIPHERAL;
	}

	if (mode != hsotg->dr_mode) {
		FUNC2(hsotg->dev,
			 "Configuration mismatch. dr_mode forced to %s\n",
			mode == USB_DR_MODE_HOST ? "host" : "device");

		hsotg->dr_mode = mode;
	}

	return 0;
}