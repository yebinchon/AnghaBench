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
struct da8xx_ohci_hcd {scalar_t__ vbus_reg; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 struct da8xx_ohci_hcd* FUNC1 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC2(struct usb_hcd *hcd)
{
	struct da8xx_ohci_hcd *da8xx_ohci = FUNC1(hcd);

	if (da8xx_ohci->vbus_reg)
		return FUNC0(da8xx_ohci->vbus_reg);

	return 1;
}