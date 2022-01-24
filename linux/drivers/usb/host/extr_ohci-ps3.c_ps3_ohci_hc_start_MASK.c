#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  bus_name; int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct ohci_hcd {TYPE_3__* regs; } ;
struct TYPE_5__ {int /*<<< orphan*/  b; int /*<<< orphan*/  a; } ;
struct TYPE_6__ {TYPE_2__ roothub; } ;

/* Variables and functions */
 int RH_A_OCPM ; 
 int RH_A_PSM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct ohci_hcd* FUNC1 (struct usb_hcd*) ; 
 int FUNC2 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct ohci_hcd*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct usb_hcd *hcd)
{
	int result;
	struct ohci_hcd *ohci = FUNC1(hcd);

	/* Handle root hub init quirk in spider south bridge. */
	/* Also set PwrOn2PwrGood to 0x7f (254ms). */

	FUNC4(ohci, 0x7f000000 | RH_A_PSM | RH_A_OCPM,
		&ohci->regs->roothub.a);
	FUNC4(ohci, 0x00060000, &ohci->regs->roothub.b);

	result = FUNC2(ohci);

	if (result < 0) {
		FUNC0(hcd->self.controller, "can't start %s\n",
			hcd->self.bus_name);
		FUNC3(hcd);
	}

	return result;
}