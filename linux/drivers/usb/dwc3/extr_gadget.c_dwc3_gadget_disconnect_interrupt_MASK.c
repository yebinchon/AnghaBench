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
struct TYPE_2__ {int /*<<< orphan*/  speed; } ;
struct dwc3 {int setup_packet_pending; int connected; TYPE_1__ gadget; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_DCTL ; 
 int DWC3_DCTL_INITU1ENA ; 
 int DWC3_DCTL_INITU2ENA ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  USB_STATE_NOTATTACHED ; 
 int /*<<< orphan*/  FUNC0 (struct dwc3*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dwc3 *dwc)
{
	int			reg;

	reg = FUNC1(dwc->regs, DWC3_DCTL);
	reg &= ~DWC3_DCTL_INITU1ENA;
	FUNC2(dwc->regs, DWC3_DCTL, reg);

	reg &= ~DWC3_DCTL_INITU2ENA;
	FUNC2(dwc->regs, DWC3_DCTL, reg);

	FUNC0(dwc);

	dwc->gadget.speed = USB_SPEED_UNKNOWN;
	dwc->setup_packet_pending = false;
	FUNC3(&dwc->gadget, USB_STATE_NOTATTACHED);

	dwc->connected = false;
}