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
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct fnic {int stop_rx_link_events; int in_remove; int /*<<< orphan*/  vdev; struct fc_lport* lport; int /*<<< orphan*/  list; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  frame_queue; int /*<<< orphan*/  ctlr; int /*<<< orphan*/  fnic_lock; int /*<<< orphan*/  fip_frame_queue; int /*<<< orphan*/  fip_timer; TYPE_1__ config; int /*<<< orphan*/  notify_timer; } ;
struct fc_lport {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VFCF_FIP_CAPABLE ; 
 scalar_t__ VNIC_DEV_INTR_MODE_MSI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fnic*) ; 
 int /*<<< orphan*/  FUNC9 (struct fnic*) ; 
 int /*<<< orphan*/  fnic_event_queue ; 
 int /*<<< orphan*/  FUNC10 (struct fnic*) ; 
 int /*<<< orphan*/  FUNC11 (struct fnic*) ; 
 int /*<<< orphan*/  FUNC12 (struct fnic*) ; 
 int /*<<< orphan*/  FUNC13 (struct fnic*) ; 
 int /*<<< orphan*/  FUNC14 (struct fnic*) ; 
 int /*<<< orphan*/  fnic_list_lock ; 
 int /*<<< orphan*/  FUNC15 (struct fnic*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 struct fnic* FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC30(struct pci_dev *pdev)
{
	struct fnic *fnic = FUNC18(pdev);
	struct fc_lport *lp = fnic->lport;
	unsigned long flags;

	/*
	 * Mark state so that the workqueue thread stops forwarding
	 * received frames and link events to the local port. ISR and
	 * other threads that can queue work items will also stop
	 * creating work items on the fnic workqueue
	 */
	FUNC24(&fnic->fnic_lock, flags);
	fnic->stop_rx_link_events = 1;
	FUNC25(&fnic->fnic_lock, flags);

	if (FUNC27(fnic->vdev) == VNIC_DEV_INTR_MODE_MSI)
		FUNC1(&fnic->notify_timer);

	/*
	 * Flush the fnic event queue. After this call, there should
	 * be no event queued for this fnic device in the workqueue
	 */
	FUNC7(fnic_event_queue);
	FUNC23(&fnic->frame_queue);
	FUNC23(&fnic->tx_queue);

	if (fnic->config.flags & VFCF_FIP_CAPABLE) {
		FUNC1(&fnic->fip_timer);
		FUNC23(&fnic->fip_frame_queue);
		FUNC11(fnic);
		FUNC10(fnic);
	}

	/*
	 * Log off the fabric. This stops all remote ports, dns port,
	 * logs off the fabric. This flushes all rport, disc, lport work
	 * before returning
	 */
	FUNC3(fnic->lport);

	FUNC24(&fnic->fnic_lock, flags);
	fnic->in_remove = 1;
	FUNC25(&fnic->fnic_lock, flags);

	FUNC6(&fnic->ctlr);
	FUNC4(lp);
	FUNC15(fnic);

	/*
	 * This stops the fnic device, masks all interrupts. Completed
	 * CQ entries are drained. Posted WQ/RQ/Copy-WQ entries are
	 * cleaned up
	 */
	FUNC8(fnic);

	FUNC0(!FUNC22(&fnic->frame_queue));
	FUNC0(!FUNC22(&fnic->tx_queue));

	FUNC24(&fnic_list_lock, flags);
	FUNC16(&fnic->list);
	FUNC25(&fnic_list_lock, flags);

	FUNC5(fnic->lport->host);
	FUNC21(fnic->lport->host);
	FUNC2(fnic->lport);
	FUNC28(fnic->vdev);
	FUNC12(fnic);
	FUNC13(fnic);
	FUNC9(fnic);
	FUNC26(fnic->vdev);
	FUNC29(fnic->vdev);
	FUNC14(fnic);
	FUNC19(pdev);
	FUNC17(pdev);
	FUNC20(lp->host);
}