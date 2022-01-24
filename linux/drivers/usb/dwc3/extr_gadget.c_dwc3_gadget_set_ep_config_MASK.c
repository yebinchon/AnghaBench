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
typedef  scalar_t__ u32 ;
struct usb_ss_ep_comp_descriptor {int dummy; } ;
struct usb_endpoint_descriptor {int bInterval; } ;
struct dwc3_gadget_ep_cmd_params {int param0; int param1; int /*<<< orphan*/  param2; } ;
struct TYPE_4__ {scalar_t__ maxburst; struct usb_endpoint_descriptor* desc; struct usb_ss_ep_comp_descriptor* comp_desc; } ;
struct dwc3_ep {int number; int stream_capable; int interval; scalar_t__ direction; int /*<<< orphan*/  saved_state; TYPE_2__ endpoint; struct dwc3* dwc; } ;
struct TYPE_3__ {scalar_t__ speed; } ;
struct dwc3 {TYPE_1__ gadget; } ;
typedef  int /*<<< orphan*/  params ;

/* Variables and functions */
 unsigned int DWC3_DEPCFG_ACTION_RESTORE ; 
 int FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int DWC3_DEPCFG_STREAM_CAPABLE ; 
 int DWC3_DEPCFG_STREAM_EVENT_EN ; 
 int DWC3_DEPCFG_XFER_COMPLETE_EN ; 
 int DWC3_DEPCFG_XFER_IN_PROGRESS_EN ; 
 int DWC3_DEPCFG_XFER_NOT_READY_EN ; 
 int /*<<< orphan*/  DWC3_DEPCMD_SETEPCONFIG ; 
 scalar_t__ USB_SPEED_SUPER ; 
 int FUNC6 (struct dwc3_ep*,int /*<<< orphan*/ ,struct dwc3_gadget_ep_cmd_params*) ; 
 int /*<<< orphan*/  FUNC7 (struct dwc3_gadget_ep_cmd_params*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_endpoint_descriptor const*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_endpoint_descriptor const*) ; 
 scalar_t__ FUNC10 (struct usb_endpoint_descriptor const*) ; 
 scalar_t__ FUNC11 (struct usb_endpoint_descriptor const*) ; 
 scalar_t__ FUNC12 (struct usb_endpoint_descriptor const*) ; 
 scalar_t__ FUNC13 (struct usb_ss_ep_comp_descriptor const*) ; 

__attribute__((used)) static int FUNC14(struct dwc3_ep *dep, unsigned int action)
{
	const struct usb_ss_ep_comp_descriptor *comp_desc;
	const struct usb_endpoint_descriptor *desc;
	struct dwc3_gadget_ep_cmd_params params;
	struct dwc3 *dwc = dep->dwc;

	comp_desc = dep->endpoint.comp_desc;
	desc = dep->endpoint.desc;

	FUNC7(&params, 0x00, sizeof(params));

	params.param0 = FUNC3(FUNC9(desc))
		| FUNC5(FUNC8(desc));

	/* Burst size is only needed in SuperSpeed mode */
	if (dwc->gadget.speed >= USB_SPEED_SUPER) {
		u32 burst = dep->endpoint.maxburst;
		params.param0 |= FUNC1(burst - 1);
	}

	params.param0 |= action;
	if (action == DWC3_DEPCFG_ACTION_RESTORE)
		params.param2 |= dep->saved_state;

	if (FUNC11(desc))
		params.param1 = DWC3_DEPCFG_XFER_COMPLETE_EN;

	if (dep->number <= 1 || FUNC12(desc))
		params.param1 |= DWC3_DEPCFG_XFER_NOT_READY_EN;

	if (FUNC13(comp_desc) && FUNC10(desc)) {
		params.param1 |= DWC3_DEPCFG_STREAM_CAPABLE
			| DWC3_DEPCFG_STREAM_EVENT_EN;
		dep->stream_capable = true;
	}

	if (!FUNC11(desc))
		params.param1 |= DWC3_DEPCFG_XFER_IN_PROGRESS_EN;

	/*
	 * We are doing 1:1 mapping for endpoints, meaning
	 * Physical Endpoints 2 maps to Logical Endpoint 2 and
	 * so on. We consider the direction bit as part of the physical
	 * endpoint number. So USB endpoint 0x81 is 0x03.
	 */
	params.param1 |= FUNC2(dep->number);

	/*
	 * We must use the lower 16 TX FIFOs even though
	 * HW might have more
	 */
	if (dep->direction)
		params.param0 |= FUNC4(dep->number >> 1);

	if (desc->bInterval) {
		params.param1 |= FUNC0(desc->bInterval - 1);
		dep->interval = 1 << (desc->bInterval - 1);
	}

	return FUNC6(dep, DWC3_DEPCMD_SETEPCONFIG, &params);
}