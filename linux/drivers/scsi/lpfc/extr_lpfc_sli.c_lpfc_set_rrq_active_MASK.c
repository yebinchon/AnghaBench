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
typedef  void* uint16_t ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_DID; TYPE_2__* vport; int /*<<< orphan*/  active_rrqs_xri_bitmap; } ;
struct lpfc_node_rrq {int /*<<< orphan*/  list; void* rxid; TYPE_2__* vport; int /*<<< orphan*/  nlp_DID; struct lpfc_nodelist* ndlp; scalar_t__ rrq_stop_time; void* xritag; void* send_rrq; } ;
struct lpfc_hba {int cfg_enable_rrq; int fc_ratov; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  hba_flag; int /*<<< orphan*/  active_rrq_list; int /*<<< orphan*/  rrq_pool; TYPE_1__* pport; } ;
struct TYPE_4__ {int load_flag; } ;
struct TYPE_3__ {int load_flag; } ;

/* Variables and functions */
 int EINVAL ; 
 int FC_UNLOADING ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HBA_RRQ_ACTIVE ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_SLI ; 
 scalar_t__ FUNC0 (struct lpfc_nodelist*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*,void*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*) ; 
 struct lpfc_node_rrq* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (void*,int /*<<< orphan*/ ) ; 

int
FUNC10(struct lpfc_hba *phba, struct lpfc_nodelist *ndlp,
		    uint16_t xritag, uint16_t rxid, uint16_t send_rrq)
{
	unsigned long iflags;
	struct lpfc_node_rrq *rrq;
	int empty;

	if (!ndlp)
		return -EINVAL;

	if (!phba->cfg_enable_rrq)
		return -EINVAL;

	FUNC7(&phba->hbalock, iflags);
	if (phba->pport->load_flag & FC_UNLOADING) {
		phba->hba_flag &= ~HBA_RRQ_ACTIVE;
		goto out;
	}

	/*
	 * set the active bit even if there is no mem available.
	 */
	if (FUNC0(ndlp))
		goto out;

	if (ndlp->vport && (ndlp->vport->load_flag & FC_UNLOADING))
		goto out;

	if (!ndlp->active_rrqs_xri_bitmap)
		goto out;

	if (FUNC9(xritag, ndlp->active_rrqs_xri_bitmap))
		goto out;

	FUNC8(&phba->hbalock, iflags);
	rrq = FUNC5(phba->rrq_pool, GFP_KERNEL);
	if (!rrq) {
		FUNC3(phba, KERN_INFO, LOG_SLI,
				"3155 Unable to allocate RRQ xri:0x%x rxid:0x%x"
				" DID:0x%x Send:%d\n",
				xritag, rxid, ndlp->nlp_DID, send_rrq);
		return -EINVAL;
	}
	if (phba->cfg_enable_rrq == 1)
		rrq->send_rrq = send_rrq;
	else
		rrq->send_rrq = 0;
	rrq->xritag = xritag;
	rrq->rrq_stop_time = jiffies +
				FUNC6(1000 * (phba->fc_ratov + 1));
	rrq->ndlp = ndlp;
	rrq->nlp_DID = ndlp->nlp_DID;
	rrq->vport = ndlp->vport;
	rrq->rxid = rxid;
	FUNC7(&phba->hbalock, iflags);
	empty = FUNC2(&phba->active_rrq_list);
	FUNC1(&rrq->list, &phba->active_rrq_list);
	phba->hba_flag |= HBA_RRQ_ACTIVE;
	if (empty)
		FUNC4(phba);
	FUNC8(&phba->hbalock, iflags);
	return 0;
out:
	FUNC8(&phba->hbalock, iflags);
	FUNC3(phba, KERN_INFO, LOG_SLI,
			"2921 Can't set rrq active xri:0x%x rxid:0x%x"
			" DID:0x%x Send:%d\n",
			xritag, rxid, ndlp->nlp_DID, send_rrq);
	return -EINVAL;
}