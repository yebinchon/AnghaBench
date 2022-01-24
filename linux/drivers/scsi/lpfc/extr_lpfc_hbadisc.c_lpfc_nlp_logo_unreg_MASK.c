#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lpfc_vport {int /*<<< orphan*/  phba; } ;
struct lpfc_nodelist {int nlp_flag; scalar_t__ nlp_defer_did; int /*<<< orphan*/  nlp_rpi; int /*<<< orphan*/  nlp_DID; } ;
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; } ;
struct TYPE_4__ {scalar_t__ ctx_ndlp; struct lpfc_vport* vport; } ;
typedef  TYPE_1__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_DISCOVERY ; 
 scalar_t__ NLP_EVT_NOTHING_PENDING ; 
 int NLP_RELEASE_RPI ; 
 int NLP_UNREG_INP ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
	struct lpfc_vport  *vport = pmb->vport;
	struct lpfc_nodelist *ndlp;

	ndlp = (struct lpfc_nodelist *)(pmb->ctx_ndlp);
	if (!ndlp)
		return;
	FUNC0(vport, ndlp, 0);
	FUNC4(pmb, phba->mbox_mem_pool);

	/* Check to see if there are any deferred events to process */
	if ((ndlp->nlp_flag & NLP_UNREG_INP) &&
	    (ndlp->nlp_defer_did != NLP_EVT_NOTHING_PENDING)) {
		FUNC2(vport, KERN_INFO, LOG_DISCOVERY,
				 "1434 UNREG cmpl deferred logo x%x "
				 "on NPort x%x Data: x%x x%px\n",
				 ndlp->nlp_rpi, ndlp->nlp_DID,
				 ndlp->nlp_defer_did, ndlp);

		ndlp->nlp_flag &= ~NLP_UNREG_INP;
		ndlp->nlp_defer_did = NLP_EVT_NOTHING_PENDING;
		FUNC1(vport, ndlp->nlp_DID, 0);
	} else {
		if (ndlp->nlp_flag & NLP_RELEASE_RPI) {
			FUNC3(vport->phba, ndlp->nlp_rpi);
			ndlp->nlp_flag &= ~NLP_RELEASE_RPI;
		}
		ndlp->nlp_flag &= ~NLP_UNREG_INP;
	}
}