#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_flag; scalar_t__ nlp_state; int /*<<< orphan*/  nlp_usg_map; int /*<<< orphan*/  kref; int /*<<< orphan*/  nlp_DID; int /*<<< orphan*/  nlp_rpi; } ;
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/ * ctx_ndlp; int /*<<< orphan*/ * ctx_buf; struct lpfc_vport* vport; } ;
typedef  TYPE_1__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int /*<<< orphan*/  NLP_EVT_CMPL_REG_LOGIN ; 
 int NLP_IGNR_REG_CMPL ; 
 int NLP_REG_LOGIN_SEND ; 
 int NLP_RPI_REGISTERED ; 
 scalar_t__ NLP_STE_REG_LOGIN_ISSUE ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,struct lpfc_nodelist*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lpfc_nodelist*) ; 
 struct Scsi_Host* FUNC6 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
	struct lpfc_vport  *vport = pmb->vport;
	struct lpfc_dmabuf *mp = (struct lpfc_dmabuf *)(pmb->ctx_buf);
	struct lpfc_nodelist *ndlp = (struct lpfc_nodelist *)pmb->ctx_ndlp;
	struct Scsi_Host  *shost = FUNC6(vport);

	pmb->ctx_buf = NULL;
	pmb->ctx_ndlp = NULL;

	FUNC5(vport, KERN_INFO, LOG_SLI,
			 "0002 rpi:%x DID:%x flg:%x %d map:%x x%px\n",
			 ndlp->nlp_rpi, ndlp->nlp_DID, ndlp->nlp_flag,
			 FUNC1(&ndlp->kref),
			 ndlp->nlp_usg_map, ndlp);
	if (ndlp->nlp_flag & NLP_REG_LOGIN_SEND)
		ndlp->nlp_flag &= ~NLP_REG_LOGIN_SEND;

	if (ndlp->nlp_flag & NLP_IGNR_REG_CMPL ||
	    ndlp->nlp_state != NLP_STE_REG_LOGIN_ISSUE) {
		/* We rcvd a rscn after issuing this
		 * mbox reg login, we may have cycled
		 * back through the state and be
		 * back at reg login state so this
		 * mbox needs to be ignored becase
		 * there is another reg login in
		 * process.
		 */
		FUNC9(shost->host_lock);
		ndlp->nlp_flag &= ~NLP_IGNR_REG_CMPL;
		FUNC10(shost->host_lock);

		/*
		 * We cannot leave the RPI registered because
		 * if we go thru discovery again for this ndlp
		 * a subsequent REG_RPI will fail.
		 */
		ndlp->nlp_flag |= NLP_RPI_REGISTERED;
		FUNC7(vport, ndlp);
	}

	/* Call state machine */
	FUNC2(vport, ndlp, pmb, NLP_EVT_CMPL_REG_LOGIN);

	FUNC3(phba, mp->virt, mp->phys);
	FUNC0(mp);
	FUNC8(pmb, phba->mbox_mem_pool);
	/* decrement the node reference count held for this callback
	 * function.
	 */
	FUNC4(ndlp);

	return;
}