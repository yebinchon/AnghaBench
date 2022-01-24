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
struct usb_gadget {int dummy; } ;
struct dwc2_hsotg {int /*<<< orphan*/  uphy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct dwc2_hsotg* FUNC1 (struct usb_gadget*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct usb_gadget *gadget, unsigned int mA)
{
	struct dwc2_hsotg *hsotg = FUNC1(gadget);

	if (FUNC0(hsotg->uphy))
		return -ENOTSUPP;
	return FUNC2(hsotg->uphy, mA);
}