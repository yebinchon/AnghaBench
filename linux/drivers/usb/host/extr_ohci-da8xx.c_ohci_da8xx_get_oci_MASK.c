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
struct usb_hcd {int dummy; } ;
struct da8xx_ohci_hcd {int /*<<< orphan*/  vbus_reg; scalar_t__ oc_gpio; } ;

/* Variables and functions */
 unsigned int REGULATOR_ERROR_OVER_CURRENT ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int*) ; 
 struct da8xx_ohci_hcd* FUNC2 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC3(struct usb_hcd *hcd)
{
	struct da8xx_ohci_hcd *da8xx_ohci = FUNC2(hcd);
	unsigned int flags;
	int ret;

	if (da8xx_ohci->oc_gpio)
		return FUNC0(da8xx_ohci->oc_gpio);

	if (!da8xx_ohci->vbus_reg)
		return 0;

	ret = FUNC1(da8xx_ohci->vbus_reg, &flags);
	if (ret)
		return ret;

	if (flags & REGULATOR_ERROR_OVER_CURRENT)
		return 1;

	return 0;
}