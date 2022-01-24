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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct xhci_hcd {int imod_interval; int quirks; TYPE_2__* ir_set; TYPE_1__* op_regs; } ;
struct xhci_command {int dummy; } ;
struct usb_hcd {int uses_new_polling; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq_pending; int /*<<< orphan*/  irq_control; int /*<<< orphan*/  erst_dequeue; } ;
struct TYPE_3__ {int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int CMD_EIE ; 
 int ENOMEM ; 
 scalar_t__ ERST_PTR_MASK ; 
 int FUNC0 (int) ; 
 int ER_IRQ_INTERVAL_MASK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TRB_NEC_GET_FW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int XHCI_NEC_HOST ; 
 struct xhci_hcd* FUNC2 (struct usb_hcd*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trace_xhci_dbg_init ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 struct xhci_command* FUNC6 (struct xhci_hcd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_hcd*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC10 (struct xhci_hcd*,struct xhci_command*) ; 
 int FUNC11 (struct xhci_hcd*,struct xhci_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct xhci_hcd*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct xhci_hcd*) ; 
 int FUNC14 (struct usb_hcd*) ; 

int FUNC15(struct usb_hcd *hcd)
{
	u32 temp;
	u64 temp_64;
	int ret;
	struct xhci_hcd *xhci = FUNC2(hcd);

	/* Start the xHCI host controller running only after the USB 2.0 roothub
	 * is setup.
	 */

	hcd->uses_new_polling = 1;
	if (!FUNC4(hcd))
		return FUNC13(xhci);

	FUNC8(xhci, trace_xhci_dbg_init, "xhci_run");

	ret = FUNC14(hcd);
	if (ret)
		return ret;

	temp_64 = FUNC12(xhci, &xhci->ir_set->erst_dequeue);
	temp_64 &= ~ERST_PTR_MASK;
	FUNC8(xhci, trace_xhci_dbg_init,
			"ERST deq = 64'h%0lx", (long unsigned int) temp_64);

	FUNC8(xhci, trace_xhci_dbg_init,
			"// Set the interrupt modulation register");
	temp = FUNC3(&xhci->ir_set->irq_control);
	temp &= ~ER_IRQ_INTERVAL_MASK;
	temp |= (xhci->imod_interval / 250) & ER_IRQ_INTERVAL_MASK;
	FUNC5(temp, &xhci->ir_set->irq_control);

	/* Set the HCD state before we enable the irqs */
	temp = FUNC3(&xhci->op_regs->command);
	temp |= (CMD_EIE);
	FUNC8(xhci, trace_xhci_dbg_init,
			"// Enable interrupts, cmd = 0x%x.", temp);
	FUNC5(temp, &xhci->op_regs->command);

	temp = FUNC3(&xhci->ir_set->irq_pending);
	FUNC8(xhci, trace_xhci_dbg_init,
			"// Enabling event ring interrupter %p by writing 0x%x to irq_pending",
			xhci->ir_set, (unsigned int) FUNC0(temp));
	FUNC5(FUNC0(temp), &xhci->ir_set->irq_pending);

	if (xhci->quirks & XHCI_NEC_HOST) {
		struct xhci_command *command;

		command = FUNC6(xhci, false, GFP_KERNEL);
		if (!command)
			return -ENOMEM;

		ret = FUNC11(xhci, command, 0, 0, 0,
				FUNC1(TRB_NEC_GET_FW));
		if (ret)
			FUNC10(xhci, command);
	}
	FUNC8(xhci, trace_xhci_dbg_init,
			"Finished xhci_run for USB2 roothub");

	FUNC7(xhci);

	FUNC9(xhci);

	return 0;
}