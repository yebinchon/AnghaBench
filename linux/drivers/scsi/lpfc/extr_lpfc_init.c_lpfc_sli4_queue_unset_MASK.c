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
struct lpfc_sli4_hdw_queue {scalar_t__ io_cq; scalar_t__ io_wq; } ;
struct lpfc_queue {int dummy; } ;
struct TYPE_4__ {scalar_t__ cq_max; int /*<<< orphan*/ * cq_lookup; TYPE_1__* hba_eq_hdl; struct lpfc_sli4_hdw_queue* hdwq; scalar_t__* nvmet_cqset; int /*<<< orphan*/ * nvmet_mrq_data; scalar_t__* nvmet_mrq_hdr; scalar_t__ nvmels_cq; scalar_t__ els_cq; scalar_t__ mbx_cq; int /*<<< orphan*/  dat_rq; scalar_t__ hdr_rq; scalar_t__ els_wq; scalar_t__ nvmels_wq; scalar_t__ mbx_wq; } ;
struct lpfc_hba {int cfg_nvmet_mrq; int cfg_hdw_queue; int cfg_irq_chann; TYPE_2__ sli4_hba; scalar_t__ nvmet_support; } ;
struct TYPE_3__ {struct lpfc_queue* eq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,struct lpfc_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,scalar_t__) ; 

void
FUNC6(struct lpfc_hba *phba)
{
	struct lpfc_sli4_hdw_queue *qp;
	struct lpfc_queue *eq;
	int qidx;

	/* Unset mailbox command work queue */
	if (phba->sli4_hba.mbx_wq)
		FUNC3(phba, phba->sli4_hba.mbx_wq);

	/* Unset NVME LS work queue */
	if (phba->sli4_hba.nvmels_wq)
		FUNC5(phba, phba->sli4_hba.nvmels_wq);

	/* Unset ELS work queue */
	if (phba->sli4_hba.els_wq)
		FUNC5(phba, phba->sli4_hba.els_wq);

	/* Unset unsolicited receive queue */
	if (phba->sli4_hba.hdr_rq)
		FUNC4(phba, phba->sli4_hba.hdr_rq,
				phba->sli4_hba.dat_rq);

	/* Unset mailbox command complete queue */
	if (phba->sli4_hba.mbx_cq)
		FUNC1(phba, phba->sli4_hba.mbx_cq);

	/* Unset ELS complete queue */
	if (phba->sli4_hba.els_cq)
		FUNC1(phba, phba->sli4_hba.els_cq);

	/* Unset NVME LS complete queue */
	if (phba->sli4_hba.nvmels_cq)
		FUNC1(phba, phba->sli4_hba.nvmels_cq);

	if (phba->nvmet_support) {
		/* Unset NVMET MRQ queue */
		if (phba->sli4_hba.nvmet_mrq_hdr) {
			for (qidx = 0; qidx < phba->cfg_nvmet_mrq; qidx++)
				FUNC4(
					phba,
					phba->sli4_hba.nvmet_mrq_hdr[qidx],
					phba->sli4_hba.nvmet_mrq_data[qidx]);
		}

		/* Unset NVMET CQ Set complete queue */
		if (phba->sli4_hba.nvmet_cqset) {
			for (qidx = 0; qidx < phba->cfg_nvmet_mrq; qidx++)
				FUNC1(
					phba, phba->sli4_hba.nvmet_cqset[qidx]);
		}
	}

	/* Unset fast-path SLI4 queues */
	if (phba->sli4_hba.hdwq) {
		/* Loop thru all Hardware Queues */
		for (qidx = 0; qidx < phba->cfg_hdw_queue; qidx++) {
			/* Destroy the CQ/WQ corresponding to Hardware Queue */
			qp = &phba->sli4_hba.hdwq[qidx];
			FUNC5(phba, qp->io_wq);
			FUNC1(phba, qp->io_cq);
		}
		/* Loop thru all IRQ vectors */
		for (qidx = 0; qidx < phba->cfg_irq_chann; qidx++) {
			/* Destroy the EQ corresponding to the IRQ vector */
			eq = phba->sli4_hba.hba_eq_hdl[qidx].eq;
			FUNC2(phba, eq);
		}
	}

	FUNC0(phba->sli4_hba.cq_lookup);
	phba->sli4_hba.cq_lookup = NULL;
	phba->sli4_hba.cq_max = 0;
}