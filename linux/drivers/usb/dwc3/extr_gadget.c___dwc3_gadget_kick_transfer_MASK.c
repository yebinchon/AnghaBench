#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct dwc3_trb {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  stream_id; } ;
struct dwc3_request {struct dwc3_gadget_ep_cmd_params* trb; TYPE_1__ request; int /*<<< orphan*/  trb_dma; } ;
struct dwc3_gadget_ep_cmd_params {int /*<<< orphan*/  param1; int /*<<< orphan*/  param0; } ;
struct TYPE_4__ {int /*<<< orphan*/  desc; } ;
struct dwc3_ep {int flags; int /*<<< orphan*/  resource_index; int /*<<< orphan*/  frame_number; TYPE_2__ endpoint; scalar_t__ stream_capable; int /*<<< orphan*/  started_list; } ;
typedef  int /*<<< orphan*/  params ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DWC3_DEPCMD_STARTTRANSFER ; 
 int DWC3_DEPCMD_UPDATETRANSFER ; 
 int DWC3_EP_PENDING_REQUEST ; 
 int DWC3_EP_TRANSFER_STARTED ; 
 int /*<<< orphan*/  FUNC1 (struct dwc3_ep*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc3_ep*,struct dwc3_request*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc3_ep*) ; 
 int FUNC4 (struct dwc3_ep*,int,struct dwc3_gadget_ep_cmd_params*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dwc3_gadget_ep_cmd_params*,int /*<<< orphan*/ ,int) ; 
 struct dwc3_request* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct dwc3_ep *dep)
{
	struct dwc3_gadget_ep_cmd_params params;
	struct dwc3_request		*req;
	int				starting;
	int				ret;
	u32				cmd;

	if (!FUNC1(dep))
		return 0;

	starting = !(dep->flags & DWC3_EP_TRANSFER_STARTED);

	FUNC3(dep);
	req = FUNC7(&dep->started_list);
	if (!req) {
		dep->flags |= DWC3_EP_PENDING_REQUEST;
		return 0;
	}

	FUNC6(&params, 0, sizeof(params));

	if (starting) {
		params.param0 = FUNC8(req->trb_dma);
		params.param1 = FUNC5(req->trb_dma);
		cmd = DWC3_DEPCMD_STARTTRANSFER;

		if (dep->stream_capable)
			cmd |= FUNC0(req->request.stream_id);

		if (FUNC9(dep->endpoint.desc))
			cmd |= FUNC0(dep->frame_number);
	} else {
		cmd = DWC3_DEPCMD_UPDATETRANSFER |
			FUNC0(dep->resource_index);
	}

	ret = FUNC4(dep, cmd, &params);
	if (ret < 0) {
		/*
		 * FIXME we need to iterate over the list of requests
		 * here and stop, unmap, free and del each of the linked
		 * requests instead of what we do now.
		 */
		if (req->trb)
			FUNC6(req->trb, 0, sizeof(struct dwc3_trb));
		FUNC2(dep, req, ret);
		return ret;
	}

	return 0;
}