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
struct lpfc_nodelist {int /*<<< orphan*/  vport; int /*<<< orphan*/  nlp_usg_map; int /*<<< orphan*/  kref; int /*<<< orphan*/  nlp_flag; int /*<<< orphan*/  nlp_DID; int /*<<< orphan*/  nlp_rpi; } ;
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ctx_ndlp; int /*<<< orphan*/ * ctx_buf; } ;
typedef  TYPE_1__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_NODE ; 
 scalar_t__ FUNC0 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC9(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
	struct lpfc_dmabuf *mp = (struct lpfc_dmabuf *)(pmb->ctx_buf);
	struct lpfc_nodelist *ndlp = (struct lpfc_nodelist *)pmb->ctx_ndlp;

	pmb->ctx_buf = NULL;
	pmb->ctx_ndlp = NULL;

	FUNC4(phba, mp->virt, mp->phys);
	FUNC1(mp);
	FUNC8(pmb, phba->mbox_mem_pool);
	if (ndlp) {
		FUNC7(ndlp->vport, KERN_INFO, LOG_NODE,
				 "0006 rpi%x DID:%x flg:%x %d map:%x x%px\n",
				 ndlp->nlp_rpi, ndlp->nlp_DID, ndlp->nlp_flag,
				 FUNC2(&ndlp->kref),
				 ndlp->nlp_usg_map, ndlp);
		if (FUNC0(ndlp)) {
			FUNC6(ndlp);
			/* This is the end of the default RPI cleanup logic for
			 * this ndlp. If no other discovery threads are using
			 * this ndlp, free all resources associated with it.
			 */
			FUNC5(ndlp);
		} else {
			FUNC3(ndlp->vport, ndlp);
		}
	}

	return;
}