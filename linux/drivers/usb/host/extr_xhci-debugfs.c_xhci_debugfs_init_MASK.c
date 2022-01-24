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
struct xhci_hcd {void* debugfs_root; void* debugfs_slots; int /*<<< orphan*/  event_ring; int /*<<< orphan*/  cmd_ring; TYPE_2__* cap_regs; int /*<<< orphan*/  regset_list; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device* controller; } ;
struct TYPE_6__ {TYPE_1__ self; } ;
struct TYPE_5__ {int /*<<< orphan*/  run_regs_off; int /*<<< orphan*/  hc_capbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int RTSOFF_MASK ; 
 int /*<<< orphan*/  XHCI_EXT_CAPS_DEBUG ; 
 int /*<<< orphan*/  XHCI_EXT_CAPS_LEGACY ; 
 int /*<<< orphan*/  XHCI_EXT_CAPS_PROTOCOL ; 
 void* FUNC3 (char*,void*) ; 
 char* FUNC4 (struct device*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xhci_cap_regs ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_hcd*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_hcd*,int /*<<< orphan*/ *,char*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_hcd*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,char*) ; 
 void* xhci_debugfs_root ; 
 int /*<<< orphan*/  xhci_extcap_dbc ; 
 int /*<<< orphan*/  xhci_extcap_legsup ; 
 int /*<<< orphan*/  xhci_extcap_protocol ; 
 int /*<<< orphan*/  xhci_op_regs ; 
 int /*<<< orphan*/  xhci_runtime_regs ; 
 TYPE_3__* FUNC10 (struct xhci_hcd*) ; 

void FUNC11(struct xhci_hcd *xhci)
{
	struct device		*dev = FUNC10(xhci)->self.controller;

	xhci->debugfs_root = FUNC3(FUNC4(dev),
						xhci_debugfs_root);

	FUNC2(&xhci->regset_list);

	FUNC9(xhci,
			    0,
			    xhci_cap_regs, FUNC0(xhci_cap_regs),
			    xhci->debugfs_root, "reg-cap");

	FUNC9(xhci,
			    FUNC1(FUNC5(&xhci->cap_regs->hc_capbase)),
			    xhci_op_regs, FUNC0(xhci_op_regs),
			    xhci->debugfs_root, "reg-op");

	FUNC9(xhci,
			    FUNC5(&xhci->cap_regs->run_regs_off) & RTSOFF_MASK,
			    xhci_runtime_regs, FUNC0(xhci_runtime_regs),
			    xhci->debugfs_root, "reg-runtime");

	FUNC8(xhci, XHCI_EXT_CAPS_LEGACY,
				   xhci_extcap_legsup,
				   FUNC0(xhci_extcap_legsup),
				   "reg-ext-legsup");

	FUNC8(xhci, XHCI_EXT_CAPS_PROTOCOL,
				   xhci_extcap_protocol,
				   FUNC0(xhci_extcap_protocol),
				   "reg-ext-protocol");

	FUNC8(xhci, XHCI_EXT_CAPS_DEBUG,
				   xhci_extcap_dbc,
				   FUNC0(xhci_extcap_dbc),
				   "reg-ext-dbc");

	FUNC7(xhci, &xhci->cmd_ring,
				     "command-ring",
				     xhci->debugfs_root);

	FUNC7(xhci, &xhci->event_ring,
				     "event-ring",
				     xhci->debugfs_root);

	xhci->debugfs_slots = FUNC3("devices", xhci->debugfs_root);

	FUNC6(xhci, xhci->debugfs_root);
}