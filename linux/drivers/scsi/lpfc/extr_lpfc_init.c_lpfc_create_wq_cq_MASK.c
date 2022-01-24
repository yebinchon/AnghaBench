#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_6__ {void* wqp; } ;
struct TYPE_7__ {TYPE_1__ sli4; } ;
struct lpfc_sli_ring {TYPE_2__ sli; } ;
struct lpfc_queue {int /*<<< orphan*/  queue_id; int /*<<< orphan*/  assoc_qid; struct lpfc_sli_ring* pring; } ;
struct TYPE_10__ {TYPE_4__* mbx_cq; TYPE_3__* mbx_wq; } ;
struct lpfc_hba {TYPE_5__ sli4_hba; } ;
struct TYPE_9__ {scalar_t__ queue_id; } ;
struct TYPE_8__ {int queue_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_INIT ; 
 scalar_t__ LPFC_MBOX ; 
 int /*<<< orphan*/  LPFC_MCQ ; 
 int /*<<< orphan*/  LPFC_WCQ ; 
 int FUNC0 (struct lpfc_hba*,struct lpfc_queue*,struct lpfc_queue*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (struct lpfc_hba*,struct lpfc_queue*,struct lpfc_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct lpfc_hba*,struct lpfc_queue*,struct lpfc_queue*,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(struct lpfc_hba *phba, struct lpfc_queue *eq,
	struct lpfc_queue *cq, struct lpfc_queue *wq, uint16_t *cq_map,
	int qidx, uint32_t qtype)
{
	struct lpfc_sli_ring *pring;
	int rc;

	if (!eq || !cq || !wq) {
		FUNC2(phba, KERN_ERR, LOG_INIT,
			"6085 Fast-path %s (%d) not allocated\n",
			((eq) ? ((cq) ? "WQ" : "CQ") : "EQ"), qidx);
		return -ENOMEM;
	}

	/* create the Cq first */
	rc = FUNC0(phba, cq, eq,
			(qtype == LPFC_MBOX) ? LPFC_MCQ : LPFC_WCQ, qtype);
	if (rc) {
		FUNC2(phba, KERN_ERR, LOG_INIT,
			"6086 Failed setup of CQ (%d), rc = 0x%x\n",
			qidx, (uint32_t)rc);
		return rc;
	}

	if (qtype != LPFC_MBOX) {
		/* Setup cq_map for fast lookup */
		if (cq_map)
			*cq_map = cq->queue_id;

		FUNC2(phba, KERN_INFO, LOG_INIT,
			"6087 CQ setup: cq[%d]-id=%d, parent eq[%d]-id=%d\n",
			qidx, cq->queue_id, qidx, eq->queue_id);

		/* create the wq */
		rc = FUNC3(phba, wq, cq, qtype);
		if (rc) {
			FUNC2(phba, KERN_ERR, LOG_INIT,
				"4618 Fail setup fastpath WQ (%d), rc = 0x%x\n",
				qidx, (uint32_t)rc);
			/* no need to tear down cq - caller will do so */
			return rc;
		}

		/* Bind this CQ/WQ to the NVME ring */
		pring = wq->pring;
		pring->sli.sli4.wqp = (void *)wq;
		cq->pring = pring;

		FUNC2(phba, KERN_INFO, LOG_INIT,
			"2593 WQ setup: wq[%d]-id=%d assoc=%d, cq[%d]-id=%d\n",
			qidx, wq->queue_id, wq->assoc_qid, qidx, cq->queue_id);
	} else {
		rc = FUNC1(phba, wq, cq, LPFC_MBOX);
		if (rc) {
			FUNC2(phba, KERN_ERR, LOG_INIT,
				"0539 Failed setup of slow-path MQ: "
				"rc = 0x%x\n", rc);
			/* no need to tear down cq - caller will do so */
			return rc;
		}

		FUNC2(phba, KERN_INFO, LOG_INIT,
			"2589 MBX MQ setup: wq-id=%d, parent cq-id=%d\n",
			phba->sli4_hba.mbx_wq->queue_id,
			phba->sli4_hba.mbx_cq->queue_id);
	}

	return 0;
}