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
struct dwc3_gadget_ep_cmd_params {int /*<<< orphan*/  param1; int /*<<< orphan*/  param0; } ;
struct dwc3_ep {int flags; struct dwc3* dwc; } ;
struct dwc3 {int /*<<< orphan*/  ep0_next_event; int /*<<< orphan*/  ep0_trb_addr; } ;
typedef  int /*<<< orphan*/  params ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_DEPCMD_STARTTRANSFER ; 
 int /*<<< orphan*/  DWC3_EP0_COMPLETE ; 
 int DWC3_EP_TRANSFER_STARTED ; 
 int FUNC0 (struct dwc3_ep*,int /*<<< orphan*/ ,struct dwc3_gadget_ep_cmd_params*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc3_gadget_ep_cmd_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dwc3_ep *dep)
{
	struct dwc3_gadget_ep_cmd_params params;
	struct dwc3			*dwc;
	int				ret;

	if (dep->flags & DWC3_EP_TRANSFER_STARTED)
		return 0;

	dwc = dep->dwc;

	FUNC2(&params, 0, sizeof(params));
	params.param0 = FUNC3(dwc->ep0_trb_addr);
	params.param1 = FUNC1(dwc->ep0_trb_addr);

	ret = FUNC0(dep, DWC3_DEPCMD_STARTTRANSFER, &params);
	if (ret < 0)
		return ret;

	dwc->ep0_next_event = DWC3_EP0_COMPLETE;

	return 0;
}