#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_11__ {int /*<<< orphan*/  sg_tablesize; } ;
struct usb_hcd {TYPE_5__ self; int /*<<< orphan*/  localmem_pool; } ;
struct ehci_qh_hw {void* hw_info1; int /*<<< orphan*/  hw_alt_next; int /*<<< orphan*/  hw_qtd_next; void* hw_token; int /*<<< orphan*/  hw_next; } ;
struct TYPE_12__ {int /*<<< orphan*/  function; } ;
struct ehci_hcd {int need_io_watchdog; int uframe_periodic_max; int periodic_size; int has_ppcd; int command; int /*<<< orphan*/  old_current; TYPE_4__* async; scalar_t__ i_thresh; int /*<<< orphan*/  tt_list; int /*<<< orphan*/  cached_sitd_list; int /*<<< orphan*/  cached_itd_list; int /*<<< orphan*/  intr_qh_list; int /*<<< orphan*/  intr_unlink; int /*<<< orphan*/  intr_unlink_wait; int /*<<< orphan*/  async_idle; int /*<<< orphan*/  async_unlink; TYPE_1__* caps; int /*<<< orphan*/  next_hrtimer_event; TYPE_6__ hrtimer; int /*<<< orphan*/  lock; } ;
struct TYPE_8__ {int /*<<< orphan*/ * qh; } ;
struct TYPE_10__ {TYPE_3__* dummy; int /*<<< orphan*/  qh_state; int /*<<< orphan*/  qh_dma; struct ehci_qh_hw* hw; TYPE_2__ qh_next; } ;
struct TYPE_9__ {int /*<<< orphan*/  qtd_dma; } ;
struct TYPE_7__ {int /*<<< orphan*/  hcc_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int CMD_PARK ; 
 int CMD_PPCEE ; 
 int DEFAULT_I_TDPS ; 
 int /*<<< orphan*/  EHCI_HRTIMER_NO_EVENT ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*) ; 
 int EHCI_TUNE_FLS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QH_HEAD ; 
 int /*<<< orphan*/  QH_INACTIVATE ; 
 int /*<<< orphan*/  FUNC8 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QH_STATE_LINKED ; 
 int /*<<< orphan*/  FUNC9 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QTD_STS_HALT ; 
 void* FUNC10 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ehci_hcd*,char*,...) ; 
 int /*<<< orphan*/  ehci_hrtimer_func ; 
 int FUNC12 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 struct ehci_hcd* FUNC14 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int log2_irq_thresh ; 
 int FUNC16 (int,unsigned int) ; 
 int park ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct usb_hcd *hcd)
{
	struct ehci_hcd		*ehci = FUNC14(hcd);
	u32			temp;
	int			retval;
	u32			hcc_params;
	struct ehci_qh_hw	*hw;

	FUNC17(&ehci->lock);

	/*
	 * keep io watchdog by default, those good HCDs could turn off it later
	 */
	ehci->need_io_watchdog = 1;

	FUNC15(&ehci->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
	ehci->hrtimer.function = ehci_hrtimer_func;
	ehci->next_hrtimer_event = EHCI_HRTIMER_NO_EVENT;

	hcc_params = FUNC13(ehci, &ehci->caps->hcc_params);

	/*
	 * by default set standard 80% (== 100 usec/uframe) max periodic
	 * bandwidth as required by USB 2.0
	 */
	ehci->uframe_periodic_max = 100;

	/*
	 * hw default: 1K periodic list heads, one per frame.
	 * periodic_size can shrink by USBCMD update if hcc_params allows.
	 */
	ehci->periodic_size = DEFAULT_I_TDPS;
	FUNC7(&ehci->async_unlink);
	FUNC7(&ehci->async_idle);
	FUNC7(&ehci->intr_unlink_wait);
	FUNC7(&ehci->intr_unlink);
	FUNC7(&ehci->intr_qh_list);
	FUNC7(&ehci->cached_itd_list);
	FUNC7(&ehci->cached_sitd_list);
	FUNC7(&ehci->tt_list);

	if (FUNC6(hcc_params)) {
		/* periodic schedule size can be smaller than default */
		switch (EHCI_TUNE_FLS) {
		case 0: ehci->periodic_size = 1024; break;
		case 1: ehci->periodic_size = 512; break;
		case 2: ehci->periodic_size = 256; break;
		default:	FUNC0();
		}
	}
	if ((retval = FUNC12(ehci, GFP_KERNEL)) < 0)
		return retval;

	/* controllers may cache some of the periodic schedule ... */
	if (FUNC3(hcc_params))		// full frame cache
		ehci->i_thresh = 0;
	else					// N microframes cached
		ehci->i_thresh = 2 + FUNC4(hcc_params);

	/*
	 * dedicate a qh for the async ring head, since we couldn't unlink
	 * a 'real' qh without stopping the async schedule [4.8].  use it
	 * as the 'reclamation list head' too.
	 * its dummy is used in hw_alt_next of many tds, to prevent the qh
	 * from automatically advancing to the next td after short reads.
	 */
	ehci->async->qh_next.qh = NULL;
	hw = ehci->async->hw;
	hw->hw_next = FUNC8(ehci, ehci->async->qh_dma);
	hw->hw_info1 = FUNC10(ehci, QH_HEAD);
#if defined(CONFIG_PPC_PS3)
	hw->hw_info1 |= cpu_to_hc32(ehci, QH_INACTIVATE);
#endif
	hw->hw_token = FUNC10(ehci, QTD_STS_HALT);
	hw->hw_qtd_next = FUNC1(ehci);
	ehci->async->qh_state = QH_STATE_LINKED;
	hw->hw_alt_next = FUNC9(ehci, ehci->async->dummy->qtd_dma);

	/* clear interrupt enables, set irq latency */
	if (log2_irq_thresh < 0 || log2_irq_thresh > 6)
		log2_irq_thresh = 0;
	temp = 1 << (16 + log2_irq_thresh);
	if (FUNC5(hcc_params)) {
		ehci->has_ppcd = 1;
		FUNC11(ehci, "enable per-port change event\n");
		temp |= CMD_PPCEE;
	}
	if (FUNC2(hcc_params)) {
		/* HW default park == 3, on hardware that supports it (like
		 * NVidia and ALI silicon), maximizes throughput on the async
		 * schedule by avoiding QH fetches between transfers.
		 *
		 * With fast usb storage devices and NForce2, "park" seems to
		 * make problems:  throughput reduction (!), data errors...
		 */
		if (park) {
			park = FUNC16(park, (unsigned) 3);
			temp |= CMD_PARK;
			temp |= park << 8;
		}
		FUNC11(ehci, "park %d\n", park);
	}
	if (FUNC6(hcc_params)) {
		/* periodic schedule size can be smaller than default */
		temp &= ~(3 << 2);
		temp |= (EHCI_TUNE_FLS << 2);
	}
	ehci->command = temp;

	/* Accept arbitrarily long scatter-gather lists */
	if (!hcd->localmem_pool)
		hcd->self.sg_tablesize = ~0;

	/* Prepare for unlinking active QHs */
	ehci->old_current = ~0;
	return 0;
}