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
typedef  int uint32_t ;
struct lpfc_vport {int work_port_events; int /*<<< orphan*/  work_port_lock; } ;
struct lpfc_sli_ring {int flag; } ;
struct TYPE_2__ {int fcf_flag; } ;
struct lpfc_hba {int work_ha; scalar_t__ pci_dev_grp; int hba_flag; int max_vports; scalar_t__ link_state; int link_flag; scalar_t__ sli_rev; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  HCregaddr; int /*<<< orphan*/  data_flags; struct lpfc_vport* pport; TYPE_1__ fcf; } ;

/* Variables and functions */
 int ASYNC_EVENT ; 
 int ELS_XRI_ABORT_EVENT ; 
 int FCF_REDISC_EVT ; 
 int HA_ERATT ; 
 int HA_LATT ; 
 int HA_MBATT ; 
 int HA_RXMASK ; 
 int HBA_POST_RECEIVE_BUFFER ; 
 int HBA_RRQ_ACTIVE ; 
 int HBA_SP_QUEUE_EVT ; 
 int HC_R0INT_ENA ; 
 int /*<<< orphan*/  LPFC_DATA_READY ; 
 int LPFC_DEFERRED_RING_EVENT ; 
 int /*<<< orphan*/  LPFC_ELS_HBQ ; 
 int LPFC_ELS_RING ; 
 scalar_t__ LPFC_LINK_UP ; 
 scalar_t__ LPFC_PCI_DEV_OC ; 
 scalar_t__ LPFC_SLI_REV3 ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int LPFC_STOP_IOCB_EVENT ; 
 int LS_MDS_LOOPBACK ; 
 int WORKER_DELAYED_DISC_TMO ; 
 int WORKER_DISC_TMO ; 
 int WORKER_ELS_TMO ; 
 int WORKER_FABRIC_BLOCK_TMO ; 
 int WORKER_HB_TMO ; 
 int WORKER_MBOX_TMO ; 
 int WORKER_RAMP_DOWN_QUEUE ; 
 struct lpfc_vport** FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,struct lpfc_vport**) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_hba*) ; 
 struct lpfc_sli_ring* FUNC12 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC13 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC14 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC15 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC16 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC17 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC18 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC19 (struct lpfc_hba*,struct lpfc_sli_ring*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC22 (struct lpfc_hba*) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC28(struct lpfc_hba *phba)
{
	struct lpfc_sli_ring *pring;
	uint32_t ha_copy, status, control, work_port_events;
	struct lpfc_vport **vports;
	struct lpfc_vport *vport;
	int i;

	FUNC25(&phba->hbalock);
	ha_copy = phba->work_ha;
	phba->work_ha = 0;
	FUNC26(&phba->hbalock);

	/* First, try to post the next mailbox command to SLI4 device */
	if (phba->pci_dev_grp == LPFC_PCI_DEV_OC)
		FUNC17(phba);

	if (ha_copy & HA_ERATT)
		/* Handle the error attention event */
		FUNC7(phba);

	if (ha_copy & HA_MBATT)
		FUNC18(phba);

	if (ha_copy & HA_LATT)
		FUNC8(phba);

	/* Process SLI4 events */
	if (phba->pci_dev_grp == LPFC_PCI_DEV_OC) {
		if (phba->hba_flag & HBA_RRQ_ACTIVE)
			FUNC9(phba);
		if (phba->hba_flag & ELS_XRI_ABORT_EVENT)
			FUNC15(phba);
		if (phba->hba_flag & ASYNC_EVENT)
			FUNC14(phba);
		if (phba->hba_flag & HBA_POST_RECEIVE_BUFFER) {
			FUNC25(&phba->hbalock);
			phba->hba_flag &= ~HBA_POST_RECEIVE_BUFFER;
			FUNC26(&phba->hbalock);
			FUNC20(phba, LPFC_ELS_HBQ);
		}
		if (phba->fcf.fcf_flag & FCF_REDISC_EVT)
			FUNC16(phba);
	}

	vports = FUNC0(phba);
	if (vports != NULL)
		for (i = 0; i <= phba->max_vports; i++) {
			/*
			 * We could have no vports in array if unloading, so if
			 * this happens then just use the pport
			 */
			if (vports[i] == NULL && i == 0)
				vport = phba->pport;
			else
				vport = vports[i];
			if (vport == NULL)
				break;
			FUNC25(&vport->work_port_lock);
			work_port_events = vport->work_port_events;
			vport->work_port_events &= ~work_port_events;
			FUNC26(&vport->work_port_lock);
			if (work_port_events & WORKER_DISC_TMO)
				FUNC4(vport);
			if (work_port_events & WORKER_ELS_TMO)
				FUNC6(vport);
			if (work_port_events & WORKER_HB_TMO)
				FUNC10(phba);
			if (work_port_events & WORKER_MBOX_TMO)
				FUNC11(phba);
			if (work_port_events & WORKER_FABRIC_BLOCK_TMO)
				FUNC21(phba);
			if (work_port_events & WORKER_RAMP_DOWN_QUEUE)
				FUNC13(phba);
			if (work_port_events & WORKER_DELAYED_DISC_TMO)
				FUNC2(vport);
		}
	FUNC3(phba, vports);

	pring = FUNC12(phba);
	status = (ha_copy & (HA_RXMASK  << (4*LPFC_ELS_RING)));
	status >>= (4*LPFC_ELS_RING);
	if (pring && (status & HA_RXMASK ||
		      pring->flag & LPFC_DEFERRED_RING_EVENT ||
		      phba->hba_flag & HBA_SP_QUEUE_EVT)) {
		if (pring->flag & LPFC_STOP_IOCB_EVENT) {
			pring->flag |= LPFC_DEFERRED_RING_EVENT;
			/* Preserve legacy behavior. */
			if (!(phba->hba_flag & HBA_SP_QUEUE_EVT))
				FUNC24(LPFC_DATA_READY, &phba->data_flags);
		} else {
			if (phba->link_state >= LPFC_LINK_UP ||
			    phba->link_flag & LS_MDS_LOOPBACK) {
				pring->flag &= ~LPFC_DEFERRED_RING_EVENT;
				FUNC19(phba, pring,
								(status &
								HA_RXMASK));
			}
		}
		if (phba->sli_rev == LPFC_SLI_REV4)
			FUNC5(phba);
		/*
		 * Turn on Ring interrupts
		 */
		if (phba->sli_rev <= LPFC_SLI_REV3) {
			FUNC25(&phba->hbalock);
			control = FUNC23(phba->HCregaddr);
			if (!(control & (HC_R0INT_ENA << LPFC_ELS_RING))) {
				FUNC1(phba,
					"WRK Enable ring: cntl:x%x hacopy:x%x",
					control, ha_copy, 0);

				control |= (HC_R0INT_ENA << LPFC_ELS_RING);
				FUNC27(control, phba->HCregaddr);
				FUNC23(phba->HCregaddr); /* flush */
			} else {
				FUNC1(phba,
					"WRK Ring ok:     cntl:x%x hacopy:x%x",
					control, ha_copy, 0);
			}
			FUNC26(&phba->hbalock);
		}
	}
	FUNC22(phba);
}