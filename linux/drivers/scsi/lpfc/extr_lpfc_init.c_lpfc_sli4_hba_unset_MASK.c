#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_13__ {scalar_t__ ras_enabled; } ;
struct TYPE_12__ {int sli_flag; TYPE_7__* mbox_active; } ;
struct TYPE_9__ {scalar_t__ intr_enable; } ;
struct lpfc_hba {TYPE_6__* pport; TYPE_5__ ras_fwlog; int /*<<< orphan*/  worker_thread; scalar_t__ cfg_sriov_nr_virtfn; int /*<<< orphan*/  hbalock; TYPE_4__ sli; TYPE_1__ sli4_hba; struct pci_dev* pcidev; } ;
struct TYPE_10__ {int /*<<< orphan*/  mbxStatus; } ;
struct TYPE_11__ {TYPE_2__ mb; } ;
struct TYPE_15__ {TYPE_3__ u; } ;
struct TYPE_14__ {scalar_t__ work_port_events; } ;
typedef  TYPE_7__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int LPFC_ACTIVE_MBOX_WAIT_CNT ; 
 int LPFC_SLI_ASYNC_MBX_BLK ; 
 int LPFC_SLI_MBOX_ACTIVE ; 
 int /*<<< orphan*/  MBX_NOT_FINISHED ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(struct lpfc_hba *phba)
{
	int wait_cnt = 0;
	LPFC_MBOXQ_t *mboxq;
	struct pci_dev *pdev = phba->pcidev;

	FUNC10(phba);
	if (phba->pport)
		phba->sli4_hba.intr_enable = 0;

	/*
	 * Gracefully wait out the potential current outstanding asynchronous
	 * mailbox command.
	 */

	/* First, block any pending async mailbox command from posted */
	FUNC13(&phba->hbalock);
	phba->sli.sli_flag |= LPFC_SLI_ASYNC_MBX_BLK;
	FUNC14(&phba->hbalock);
	/* Now, trying to wait it out if we can */
	while (phba->sli.sli_flag & LPFC_SLI_MBOX_ACTIVE) {
		FUNC11(10);
		if (++wait_cnt > LPFC_ACTIVE_MBOX_WAIT_CNT)
			break;
	}
	/* Forcefully release the outstanding mailbox command if timed out */
	if (phba->sli.sli_flag & LPFC_SLI_MBOX_ACTIVE) {
		FUNC13(&phba->hbalock);
		mboxq = phba->sli.mbox_active;
		mboxq->u.mb.mbxStatus = MBX_NOT_FINISHED;
		FUNC0(phba, mboxq);
		phba->sli.sli_flag &= ~LPFC_SLI_MBOX_ACTIVE;
		phba->sli.mbox_active = NULL;
		FUNC14(&phba->hbalock);
	}

	/* Abort all iocbs associated with the hba */
	FUNC9(phba);

	/* Wait for completion of device XRI exchange busy */
	FUNC8(phba);

	/* Disable PCI subsystem interrupt */
	FUNC4(phba);

	/* Disable SR-IOV if enabled */
	if (phba->cfg_sriov_nr_virtfn)
		FUNC12(pdev);

	/* Stop kthread signal shall trigger work_done one more time */
	FUNC1(phba->worker_thread);

	/* Disable FW logging to host memory */
	FUNC3(phba);

	/* Unset the queues shared with the hardware then release all
	 * allocated resources.
	 */
	FUNC6(phba);
	FUNC5(phba);

	/* Reset SLI4 HBA FCoE function */
	FUNC2(phba);

	/* Free RAS DMA memory */
	if (phba->ras_fwlog.ras_enabled)
		FUNC7(phba);

	/* Stop the SLI4 device port */
	if (phba->pport)
		phba->pport->work_port_events = 0;
}