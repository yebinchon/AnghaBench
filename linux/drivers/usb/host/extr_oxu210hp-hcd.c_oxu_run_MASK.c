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
typedef  int u32 ;
struct usb_hcd {int uses_new_polling; int /*<<< orphan*/  state; } ;
struct oxu_hcd {int periodic_dma; int command; int sbrn; TYPE_3__* regs; TYPE_2__* caps; TYPE_1__* async; } ;
struct TYPE_6__ {int /*<<< orphan*/  intr_enable; int /*<<< orphan*/  command; int /*<<< orphan*/  configured_flag; int /*<<< orphan*/  segment; int /*<<< orphan*/  async_next; int /*<<< orphan*/  frame_list; } ;
struct TYPE_5__ {int /*<<< orphan*/  hc_capbase; int /*<<< orphan*/  hcc_params; } ;
struct TYPE_4__ {scalar_t__ qh_dma; } ;

/* Variables and functions */
 int CMD_ASE ; 
 int CMD_IAAD ; 
 int CMD_LRESET ; 
 int CMD_PSE ; 
 int CMD_RESET ; 
 int CMD_RUN ; 
 int /*<<< orphan*/  DRIVER_VERSION ; 
 int FLAG_CF ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  HC_STATE_RUNNING ; 
 int FUNC1 (int) ; 
 int INTR_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct oxu_hcd*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct oxu_hcd*) ; 
 int FUNC4 (struct oxu_hcd*) ; 
 struct oxu_hcd* FUNC5 (struct usb_hcd*) ; 
 scalar_t__ ignore_oc ; 
 int /*<<< orphan*/  FUNC6 (struct oxu_hcd*,char*,int,int,int,int,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct usb_hcd *hcd)
{
	struct oxu_hcd *oxu = FUNC5(hcd);
	int retval;
	u32 temp, hcc_params;

	hcd->uses_new_polling = 1;

	/* EHCI spec section 4.1 */
	retval = FUNC4(oxu);
	if (retval != 0) {
		FUNC3(oxu);
		return retval;
	}
	FUNC8(oxu->periodic_dma, &oxu->regs->frame_list);
	FUNC8((u32) oxu->async->qh_dma, &oxu->regs->async_next);

	/* hcc_params controls whether oxu->regs->segment must (!!!)
	 * be used; it constrains QH/ITD/SITD and QTD locations.
	 * dma_pool consistent memory always uses segment zero.
	 * streaming mappings for I/O buffers, like pci_map_single(),
	 * can return segments above 4GB, if the device allows.
	 *
	 * NOTE:  the dma mask is visible through dev->dma_mask, so
	 * drivers can pass this info along ... like NETIF_F_HIGHDMA,
	 * Scsi_Host.highmem_io, and so forth.  It's readonly to all
	 * host side drivers though.
	 */
	hcc_params = FUNC7(&oxu->caps->hcc_params);
	if (FUNC0(hcc_params))
		FUNC8(0, &oxu->regs->segment);

	oxu->command &= ~(CMD_LRESET | CMD_IAAD | CMD_PSE |
				CMD_ASE | CMD_RESET);
	oxu->command |= CMD_RUN;
	FUNC8(oxu->command, &oxu->regs->command);
	FUNC2(oxu, "init", oxu->command);

	/*
	 * Start, enabling full USB 2.0 functionality ... usb 1.1 devices
	 * are explicitly handed to companion controller(s), so no TT is
	 * involved with the root hub.  (Except where one is integrated,
	 * and there's no companion controller unless maybe for USB OTG.)
	 */
	hcd->state = HC_STATE_RUNNING;
	FUNC8(FLAG_CF, &oxu->regs->configured_flag);
	FUNC7(&oxu->regs->command);	/* unblock posted writes */

	temp = FUNC1(FUNC7(&oxu->caps->hc_capbase));
	FUNC6(oxu, "USB %x.%x started, quasi-EHCI %x.%02x, driver %s%s\n",
		((oxu->sbrn & 0xf0)>>4), (oxu->sbrn & 0x0f),
		temp >> 8, temp & 0xff, DRIVER_VERSION,
		ignore_oc ? ", overcurrent ignored" : "");

	FUNC8(INTR_MASK, &oxu->regs->intr_enable); /* Turn On Interrupts */

	return 0;
}