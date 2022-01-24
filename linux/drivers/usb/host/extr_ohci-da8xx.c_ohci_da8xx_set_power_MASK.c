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
struct TYPE_2__ {struct device* controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct device {int dummy; } ;
struct da8xx_ohci_hcd {int /*<<< orphan*/  vbus_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct da8xx_ohci_hcd* FUNC3 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC4(struct usb_hcd *hcd, int on)
{
	struct da8xx_ohci_hcd *da8xx_ohci = FUNC3(hcd);
	struct device *dev = hcd->self.controller;
	int ret;

	if (!da8xx_ohci->vbus_reg)
		return 0;

	if (on) {
		ret = FUNC2(da8xx_ohci->vbus_reg);
		if (ret) {
			FUNC0(dev, "Failed to enable regulator: %d\n", ret);
			return ret;
		}
	} else {
		ret = FUNC1(da8xx_ohci->vbus_reg);
		if (ret) {
			FUNC0(dev, "Failed  to disable regulator: %d\n", ret);
			return ret;
		}
	}

	return 0;
}