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
typedef  scalar_t__ u32 ;
struct xhci_virt_device {TYPE_1__* eps; int /*<<< orphan*/  out_ctx; int /*<<< orphan*/  in_ctx; } ;
struct xhci_input_control_ctx {int /*<<< orphan*/  drop_flags; int /*<<< orphan*/  add_flags; } ;
struct xhci_hcd {int quirks; struct xhci_virt_device** devs; } ;
struct xhci_event_cmd {int dummy; } ;
struct xhci_ep_ctx {int dummy; } ;
struct TYPE_2__ {unsigned int ep_state; } ;

/* Variables and functions */
 unsigned int EP_HALTED ; 
 scalar_t__ SLOT_FLAG ; 
 int XHCI_RESET_EP_QUIRK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*,int,unsigned int) ; 
 int /*<<< orphan*/  trace_xhci_dbg_quirks ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_ep_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 struct xhci_ep_ctx* FUNC4 (struct xhci_hcd*,int /*<<< orphan*/ ,unsigned int) ; 
 struct xhci_input_control_ctx* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_hcd*,char*) ; 

__attribute__((used)) static void FUNC8(struct xhci_hcd *xhci, int slot_id,
		struct xhci_event_cmd *event, u32 cmd_comp_code)
{
	struct xhci_virt_device *virt_dev;
	struct xhci_input_control_ctx *ctrl_ctx;
	struct xhci_ep_ctx *ep_ctx;
	unsigned int ep_index;
	unsigned int ep_state;
	u32 add_flags, drop_flags;

	/*
	 * Configure endpoint commands can come from the USB core
	 * configuration or alt setting changes, or because the HW
	 * needed an extra configure endpoint command after a reset
	 * endpoint command or streams were being configured.
	 * If the command was for a halted endpoint, the xHCI driver
	 * is not waiting on the configure endpoint command.
	 */
	virt_dev = xhci->devs[slot_id];
	ctrl_ctx = FUNC5(virt_dev->in_ctx);
	if (!ctrl_ctx) {
		FUNC7(xhci, "Could not get input context, bad type.\n");
		return;
	}

	add_flags = FUNC0(ctrl_ctx->add_flags);
	drop_flags = FUNC0(ctrl_ctx->drop_flags);
	/* Input ctx add_flags are the endpoint index plus one */
	ep_index = FUNC6(add_flags) - 1;

	ep_ctx = FUNC4(xhci, virt_dev->out_ctx, ep_index);
	FUNC2(ep_ctx);

	/* A usb_set_interface() call directly after clearing a halted
	 * condition may race on this quirky hardware.  Not worth
	 * worrying about, since this is prototype hardware.  Not sure
	 * if this will work for streams, but streams support was
	 * untested on this prototype.
	 */
	if (xhci->quirks & XHCI_RESET_EP_QUIRK &&
			ep_index != (unsigned int) -1 &&
			add_flags - SLOT_FLAG == drop_flags) {
		ep_state = virt_dev->eps[ep_index].ep_state;
		if (!(ep_state & EP_HALTED))
			return;
		FUNC3(xhci, trace_xhci_dbg_quirks,
				"Completed config ep cmd - "
				"last ep index = %d, state = %d",
				ep_index, ep_state);
		/* Clear internal halted state and restart ring(s) */
		virt_dev->eps[ep_index].ep_state &= ~EP_HALTED;
		FUNC1(xhci, slot_id, ep_index);
		return;
	}
	return;
}