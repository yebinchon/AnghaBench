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
struct usb_hcd {int uses_new_polling; } ;
struct fotg210_hcd {int periodic_dma; int command; int sbrn; TYPE_3__* regs; TYPE_2__* caps; int /*<<< orphan*/  last_periodic_enable; int /*<<< orphan*/  rh_state; TYPE_1__* async; } ;
struct TYPE_6__ {int /*<<< orphan*/  intr_enable; int /*<<< orphan*/  command; int /*<<< orphan*/  async_next; int /*<<< orphan*/  frame_list; } ;
struct TYPE_5__ {int /*<<< orphan*/  hc_capbase; int /*<<< orphan*/  hcc_params; } ;
struct TYPE_4__ {scalar_t__ qh_dma; } ;

/* Variables and functions */
 int CMD_ASE ; 
 int CMD_IAAD ; 
 int CMD_PSE ; 
 int CMD_RESET ; 
 int CMD_RUN ; 
 int /*<<< orphan*/  FOTG210_RH_RUNNING ; 
 int FUNC0 (struct fotg210_hcd*,int) ; 
 int INTR_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct fotg210_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct fotg210_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct fotg210_hcd*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ehci_cf_port_reset_rwsem ; 
 int /*<<< orphan*/  FUNC5 (struct fotg210_hcd*,char*,int,int,int,int) ; 
 int FUNC6 (struct fotg210_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fotg210_hcd*,int,int /*<<< orphan*/ *) ; 
 struct fotg210_hcd* FUNC8 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

__attribute__((used)) static int FUNC12(struct usb_hcd *hcd)
{
	struct fotg210_hcd *fotg210 = FUNC8(hcd);
	u32 temp;
	u32 hcc_params;

	hcd->uses_new_polling = 1;

	/* EHCI spec section 4.1 */

	FUNC7(fotg210, fotg210->periodic_dma,
			&fotg210->regs->frame_list);
	FUNC7(fotg210, (u32)fotg210->async->qh_dma,
			&fotg210->regs->async_next);

	/*
	 * hcc_params controls whether fotg210->regs->segment must (!!!)
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
	hcc_params = FUNC6(fotg210, &fotg210->caps->hcc_params);

	/*
	 * Philips, Intel, and maybe others need CMD_RUN before the
	 * root hub will detect new devices (why?); NEC doesn't
	 */
	fotg210->command &= ~(CMD_IAAD|CMD_PSE|CMD_ASE|CMD_RESET);
	fotg210->command |= CMD_RUN;
	FUNC7(fotg210, fotg210->command, &fotg210->regs->command);
	FUNC3(fotg210, "init", fotg210->command);

	/*
	 * Start, enabling full USB 2.0 functionality ... usb 1.1 devices
	 * are explicitly handed to companion controller(s), so no TT is
	 * involved with the root hub.  (Except where one is integrated,
	 * and there's no companion controller unless maybe for USB OTG.)
	 *
	 * Turning on the CF flag will transfer ownership of all ports
	 * from the companions to the EHCI controller.  If any of the
	 * companions are in the middle of a port reset at the time, it
	 * could cause trouble.  Write-locking ehci_cf_port_reset_rwsem
	 * guarantees that no resets are in progress.  After we set CF,
	 * a short delay lets the hardware catch up; new resets shouldn't
	 * be started before the port switching actions could complete.
	 */
	FUNC4(&ehci_cf_port_reset_rwsem);
	fotg210->rh_state = FOTG210_RH_RUNNING;
	/* unblock posted writes */
	FUNC6(fotg210, &fotg210->regs->command);
	FUNC11(5000, 10000);
	FUNC10(&ehci_cf_port_reset_rwsem);
	fotg210->last_periodic_enable = FUNC9();

	temp = FUNC0(fotg210,
			FUNC6(fotg210, &fotg210->caps->hc_capbase));
	FUNC5(fotg210,
			"USB %x.%x started, EHCI %x.%02x\n",
			((fotg210->sbrn & 0xf0) >> 4), (fotg210->sbrn & 0x0f),
			temp >> 8, temp & 0xff);

	FUNC7(fotg210, INTR_MASK,
			&fotg210->regs->intr_enable); /* Turn On Interrupts */

	/* GRR this is run-once init(), being done every time the HC starts.
	 * So long as they're part of class devices, we can't do it init()
	 * since the class device isn't created that early.
	 */
	FUNC1(fotg210);
	FUNC2(fotg210);

	return 0;
}