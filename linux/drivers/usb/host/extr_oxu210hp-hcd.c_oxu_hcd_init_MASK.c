#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct usb_hcd {int dummy; } ;
struct oxu_hcd {int i_thresh; int next_uframe; int command; TYPE_4__* async; scalar_t__ reclaim_ready; int /*<<< orphan*/ * reclaim; TYPE_1__* caps; int /*<<< orphan*/  periodic_size; int /*<<< orphan*/  watchdog; int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {int /*<<< orphan*/ * qh; } ;
struct TYPE_8__ {TYPE_3__* dummy; int /*<<< orphan*/  hw_alt_next; int /*<<< orphan*/  qh_state; int /*<<< orphan*/  hw_qtd_next; void* hw_token; void* hw_info1; int /*<<< orphan*/  qh_dma; int /*<<< orphan*/  hw_next; TYPE_2__ qh_next; } ;
struct TYPE_7__ {int /*<<< orphan*/  qtd_dma; } ;
struct TYPE_5__ {int /*<<< orphan*/  hcc_params; } ;

/* Variables and functions */
 int CMD_PARK ; 
 int /*<<< orphan*/  DEFAULT_I_TDPS ; 
 int /*<<< orphan*/  EHCI_LIST_END ; 
 int EHCI_TUNE_FLS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  QH_HEAD ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QH_STATE_LINKED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QTD_STS_HALT ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct oxu_hcd*,int /*<<< orphan*/ ) ; 
 struct oxu_hcd* FUNC8 (struct usb_hcd*) ; 
 int log2_irq_thresh ; 
 int FUNC9 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct oxu_hcd*,char*,int) ; 
 int /*<<< orphan*/  oxu_watchdog ; 
 int park ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct usb_hcd *hcd)
{
	struct oxu_hcd *oxu = FUNC8(hcd);
	u32 temp;
	int retval;
	u32 hcc_params;

	FUNC12(&oxu->lock);

	FUNC13(&oxu->watchdog, oxu_watchdog, 0);

	/*
	 * hw default: 1K periodic list heads, one per frame.
	 * periodic_size can shrink by USBCMD update if hcc_params allows.
	 */
	oxu->periodic_size = DEFAULT_I_TDPS;
	retval = FUNC7(oxu, GFP_KERNEL);
	if (retval < 0)
		return retval;

	/* controllers may cache some of the periodic schedule ... */
	hcc_params = FUNC11(&oxu->caps->hcc_params);
	if (FUNC1(hcc_params))		/* full frame cache */
		oxu->i_thresh = 8;
	else					/* N microframes cached */
		oxu->i_thresh = 2 + FUNC2(hcc_params);

	oxu->reclaim = NULL;
	oxu->reclaim_ready = 0;
	oxu->next_uframe = -1;

	/*
	 * dedicate a qh for the async ring head, since we couldn't unlink
	 * a 'real' qh without stopping the async schedule [4.8].  use it
	 * as the 'reclamation list head' too.
	 * its dummy is used in hw_alt_next of many tds, to prevent the qh
	 * from automatically advancing to the next td after short reads.
	 */
	oxu->async->qh_next.qh = NULL;
	oxu->async->hw_next = FUNC4(oxu->async->qh_dma);
	oxu->async->hw_info1 = FUNC6(QH_HEAD);
	oxu->async->hw_token = FUNC6(QTD_STS_HALT);
	oxu->async->hw_qtd_next = EHCI_LIST_END;
	oxu->async->qh_state = QH_STATE_LINKED;
	oxu->async->hw_alt_next = FUNC5(oxu->async->dummy->qtd_dma);

	/* clear interrupt enables, set irq latency */
	if (log2_irq_thresh < 0 || log2_irq_thresh > 6)
		log2_irq_thresh = 0;
	temp = 1 << (16 + log2_irq_thresh);
	if (FUNC0(hcc_params)) {
		/* HW default park == 3, on hardware that supports it (like
		 * NVidia and ALI silicon), maximizes throughput on the async
		 * schedule by avoiding QH fetches between transfers.
		 *
		 * With fast usb storage devices and NForce2, "park" seems to
		 * make problems:  throughput reduction (!), data errors...
		 */
		if (park) {
			park = FUNC9(park, (unsigned) 3);
			temp |= CMD_PARK;
			temp |= park << 8;
		}
		FUNC10(oxu, "park %d\n", park);
	}
	if (FUNC3(hcc_params)) {
		/* periodic schedule size can be smaller than default */
		temp &= ~(3 << 2);
		temp |= (EHCI_TUNE_FLS << 2);
	}
	oxu->command = temp;

	return 0;
}