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
struct da8xx_ohci_hcd {scalar_t__ vbus_reg; scalar_t__ oc_gpio; } ;

/* Variables and functions */
 struct da8xx_ohci_hcd* FUNC0 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC1(struct usb_hcd *hcd)
{
	struct da8xx_ohci_hcd *da8xx_ohci = FUNC0(hcd);

	if (da8xx_ohci->oc_gpio)
		return 1;

	if (da8xx_ohci->vbus_reg)
		return 1;

	return 0;
}