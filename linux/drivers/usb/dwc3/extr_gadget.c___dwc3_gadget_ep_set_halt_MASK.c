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
struct dwc3_trb {unsigned int ctrl; } ;
struct dwc3_gadget_ep_cmd_params {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  desc; } ;
struct dwc3_ep {int number; size_t trb_enqueue; int flags; int /*<<< orphan*/  name; scalar_t__ direction; int /*<<< orphan*/  started_list; TYPE_1__ endpoint; struct dwc3* dwc; } ;
struct dwc3 {int /*<<< orphan*/  dev; struct dwc3_trb* ep0_trb; } ;
typedef  int /*<<< orphan*/  params ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_DEPCMD_SETSTALL ; 
 int DWC3_EP_STALL ; 
 int DWC3_EP_WEDGE ; 
 unsigned int DWC3_TRB_CTRL_HWO ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct dwc3_trb* FUNC1 (struct dwc3_ep*,size_t) ; 
 int FUNC2 (struct dwc3_ep*) ; 
 int FUNC3 (struct dwc3_ep*,int /*<<< orphan*/ ,struct dwc3_gadget_ep_cmd_params*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc3_gadget_ep_cmd_params*,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct dwc3_ep *dep, int value, int protocol)
{
	struct dwc3_gadget_ep_cmd_params	params;
	struct dwc3				*dwc = dep->dwc;
	int					ret;

	if (FUNC6(dep->endpoint.desc)) {
		FUNC0(dwc->dev, "%s is of Isochronous type\n", dep->name);
		return -EINVAL;
	}

	FUNC5(&params, 0x00, sizeof(params));

	if (value) {
		struct dwc3_trb *trb;

		unsigned transfer_in_flight;
		unsigned started;

		if (dep->number > 1)
			trb = FUNC1(dep, dep->trb_enqueue);
		else
			trb = &dwc->ep0_trb[dep->trb_enqueue];

		transfer_in_flight = trb->ctrl & DWC3_TRB_CTRL_HWO;
		started = !FUNC4(&dep->started_list);

		if (!protocol && ((dep->direction && transfer_in_flight) ||
				(!dep->direction && started))) {
			return -EAGAIN;
		}

		ret = FUNC3(dep, DWC3_DEPCMD_SETSTALL,
				&params);
		if (ret)
			FUNC0(dwc->dev, "failed to set STALL on %s\n",
					dep->name);
		else
			dep->flags |= DWC3_EP_STALL;
	} else {

		ret = FUNC2(dep);
		if (ret)
			FUNC0(dwc->dev, "failed to clear STALL on %s\n",
					dep->name);
		else
			dep->flags &= ~(DWC3_EP_STALL | DWC3_EP_WEDGE);
	}

	return ret;
}