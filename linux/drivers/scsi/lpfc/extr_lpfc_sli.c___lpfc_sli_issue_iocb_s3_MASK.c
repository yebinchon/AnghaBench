#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_14__ {int /*<<< orphan*/  iocb_cmd_delay; } ;
struct lpfc_sli_ring {int flag; scalar_t__ ringno; TYPE_7__ stats; } ;
struct TYPE_8__ {int /*<<< orphan*/  Type; int /*<<< orphan*/  Rctl; } ;
struct TYPE_9__ {TYPE_1__ hcsw; } ;
struct TYPE_10__ {TYPE_2__ w5; } ;
struct TYPE_11__ {TYPE_3__ genreq64; } ;
struct TYPE_12__ {int ulpCommand; TYPE_4__ un; } ;
struct lpfc_iocbq {int /*<<< orphan*/ * iocb_cmpl; TYPE_5__ iocb; int /*<<< orphan*/  vport; } ;
struct TYPE_13__ {int sli_flag; struct lpfc_sli_ring* sli3_ring; } ;
struct lpfc_hba {int hba_flag; scalar_t__ link_state; TYPE_6__ sli; int /*<<< orphan*/  pcidev; int /*<<< orphan*/  hbalock; } ;
typedef  int /*<<< orphan*/  IOCB_t ;

/* Variables and functions */
 int CMD_ABORT_XRI_CN ; 
#define  CMD_CLOSE_XRI_CN 134 
#define  CMD_CLOSE_XRI_CX 133 
#define  CMD_CREATE_XRI_CR 132 
#define  CMD_GEN_REQUEST64_CR 131 
#define  CMD_GEN_REQUEST64_CX 130 
#define  CMD_QUE_RING_BUF64_CN 129 
#define  CMD_QUE_RING_BUF_CN 128 
 int DEFER_ERATT ; 
 int /*<<< orphan*/  FC_RCTL_DD_UNSOL_CMD ; 
 int IOCB_BUSY ; 
 int IOCB_ERROR ; 
 int IOCB_SUCCESS ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int LOG_SLI ; 
 int LOG_VPORT ; 
 scalar_t__ LPFC_FCP_RING ; 
 scalar_t__ LPFC_LINK_DOWN ; 
 int LPFC_MENLO_MAINT ; 
 int LPFC_PROCESS_LA ; 
 int LPFC_STOP_IOCB_EVENT ; 
 int /*<<< orphan*/  MENLO_TRANSPORT_TYPE ; 
 size_t SLI_IOCB_RET_IOCB ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int,char*,int) ; 
 struct lpfc_iocbq* FUNC4 (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_iocbq**) ; 
 int /*<<< orphan*/ * FUNC5 (struct lpfc_hba*,struct lpfc_sli_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,struct lpfc_sli_ring*,int /*<<< orphan*/ *,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*,struct lpfc_sli_ring*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_hba*,struct lpfc_sli_ring*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int
FUNC11(struct lpfc_hba *phba, uint32_t ring_number,
		    struct lpfc_iocbq *piocb, uint32_t flag)
{
	struct lpfc_iocbq *nextiocb;
	IOCB_t *iocb;
	struct lpfc_sli_ring *pring = &phba->sli.sli3_ring[ring_number];

	FUNC2(&phba->hbalock);

	if (piocb->iocb_cmpl && (!piocb->vport) &&
	   (piocb->iocb.ulpCommand != CMD_ABORT_XRI_CN) &&
	   (piocb->iocb.ulpCommand != CMD_CLOSE_XRI_CN)) {
		FUNC3(phba, KERN_ERR,
				LOG_SLI | LOG_VPORT,
				"1807 IOCB x%x failed. No vport\n",
				piocb->iocb.ulpCommand);
		FUNC1();
		return IOCB_ERROR;
	}


	/* If the PCI channel is in offline state, do not post iocbs. */
	if (FUNC10(FUNC9(phba->pcidev)))
		return IOCB_ERROR;

	/* If HBA has a deferred error attention, fail the iocb. */
	if (FUNC10(phba->hba_flag & DEFER_ERATT))
		return IOCB_ERROR;

	/*
	 * We should never get an IOCB if we are in a < LINK_DOWN state
	 */
	if (FUNC10(phba->link_state < LPFC_LINK_DOWN))
		return IOCB_ERROR;

	/*
	 * Check to see if we are blocking IOCB processing because of a
	 * outstanding event.
	 */
	if (FUNC10(pring->flag & LPFC_STOP_IOCB_EVENT))
		goto iocb_busy;

	if (FUNC10(phba->link_state == LPFC_LINK_DOWN)) {
		/*
		 * Only CREATE_XRI, CLOSE_XRI, and QUE_RING_BUF
		 * can be issued if the link is not up.
		 */
		switch (piocb->iocb.ulpCommand) {
		case CMD_GEN_REQUEST64_CR:
		case CMD_GEN_REQUEST64_CX:
			if (!(phba->sli.sli_flag & LPFC_MENLO_MAINT) ||
				(piocb->iocb.un.genreq64.w5.hcsw.Rctl !=
					FC_RCTL_DD_UNSOL_CMD) ||
				(piocb->iocb.un.genreq64.w5.hcsw.Type !=
					MENLO_TRANSPORT_TYPE))

				goto iocb_busy;
			break;
		case CMD_QUE_RING_BUF_CN:
		case CMD_QUE_RING_BUF64_CN:
			/*
			 * For IOCBs, like QUE_RING_BUF, that have no rsp ring
			 * completion, iocb_cmpl MUST be 0.
			 */
			if (piocb->iocb_cmpl)
				piocb->iocb_cmpl = NULL;
			/*FALLTHROUGH*/
		case CMD_CREATE_XRI_CR:
		case CMD_CLOSE_XRI_CN:
		case CMD_CLOSE_XRI_CX:
			break;
		default:
			goto iocb_busy;
		}

	/*
	 * For FCP commands, we must be in a state where we can process link
	 * attention events.
	 */
	} else if (FUNC10(pring->ringno == LPFC_FCP_RING &&
			    !(phba->sli.sli_flag & LPFC_PROCESS_LA))) {
		goto iocb_busy;
	}

	while ((iocb = FUNC5(phba, pring)) &&
	       (nextiocb = FUNC4(phba, pring, &piocb)))
		FUNC6(phba, pring, iocb, nextiocb);

	if (iocb)
		FUNC8(phba, pring);
	else
		FUNC7(phba, pring);

	if (!piocb)
		return IOCB_SUCCESS;

	goto out_busy;

 iocb_busy:
	pring->stats.iocb_cmd_delay++;

 out_busy:

	if (!(flag & SLI_IOCB_RET_IOCB)) {
		FUNC0(phba, pring, piocb);
		return IOCB_SUCCESS;
	}

	return IOCB_BUSY;
}