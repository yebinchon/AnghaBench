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
struct dwc3_ep {int dummy; } ;
struct dwc3 {int /*<<< orphan*/  ep0_trb_addr; struct dwc3_ep** eps; int /*<<< orphan*/  ep0_in_setup; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_TRBCTL_CONTROL_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc3_ep*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct dwc3_ep*) ; 

void FUNC4(struct dwc3 *dwc)
{
	struct dwc3_ep			*dep;
	int				ret;

	FUNC1(&dwc->ep0_in_setup);

	dep = dwc->eps[0];
	FUNC2(dep, dwc->ep0_trb_addr, 8,
			DWC3_TRBCTL_CONTROL_SETUP, false);
	ret = FUNC3(dep);
	FUNC0(ret < 0);
}