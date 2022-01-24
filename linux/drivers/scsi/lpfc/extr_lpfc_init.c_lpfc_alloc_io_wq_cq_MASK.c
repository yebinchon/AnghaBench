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
typedef  int /*<<< orphan*/  u32 ;
struct lpfc_queue {int qe_valid; int hdwq; int chann; int /*<<< orphan*/  wq_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  lpfc_wq_list; TYPE_1__* hdwq; int /*<<< orphan*/  wq_ecount; int /*<<< orphan*/  wq_esize; int /*<<< orphan*/  cq_ecount; int /*<<< orphan*/  cq_esize; } ;
struct lpfc_hba {TYPE_2__ sli4_hba; scalar_t__ fcp_embed_io; scalar_t__ enab_exp_wqcq_pages; } ;
struct TYPE_3__ {struct lpfc_queue* io_wq; struct lpfc_queue* io_cq; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LPFC_CQE_EXP_COUNT ; 
 int /*<<< orphan*/  LPFC_DEFAULT_PAGE_SIZE ; 
 int /*<<< orphan*/  LPFC_EXPANDED_PAGE_SIZE ; 
 int /*<<< orphan*/  LPFC_FIND_BY_HDWQ ; 
 int /*<<< orphan*/  LPFC_WQE128_SIZE ; 
 int /*<<< orphan*/  LPFC_WQE_EXP_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct lpfc_hba*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 struct lpfc_queue* FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct lpfc_hba *phba, int idx)
{
	struct lpfc_queue *qdesc;
	u32 wqesize;
	int cpu;

	cpu = FUNC1(phba, idx, LPFC_FIND_BY_HDWQ);
	/* Create Fast Path IO CQs */
	if (phba->enab_exp_wqcq_pages)
		/* Increase the CQ size when WQEs contain an embedded cdb */
		qdesc = FUNC3(phba, LPFC_EXPANDED_PAGE_SIZE,
					      phba->sli4_hba.cq_esize,
					      LPFC_CQE_EXP_COUNT, cpu);

	else
		qdesc = FUNC3(phba, LPFC_DEFAULT_PAGE_SIZE,
					      phba->sli4_hba.cq_esize,
					      phba->sli4_hba.cq_ecount, cpu);
	if (!qdesc) {
		FUNC2(phba, KERN_ERR, LOG_INIT,
			"0499 Failed allocate fast-path IO CQ (%d)\n", idx);
		return 1;
	}
	qdesc->qe_valid = 1;
	qdesc->hdwq = idx;
	qdesc->chann = cpu;
	phba->sli4_hba.hdwq[idx].io_cq = qdesc;

	/* Create Fast Path IO WQs */
	if (phba->enab_exp_wqcq_pages) {
		/* Increase the WQ size when WQEs contain an embedded cdb */
		wqesize = (phba->fcp_embed_io) ?
			LPFC_WQE128_SIZE : phba->sli4_hba.wq_esize;
		qdesc = FUNC3(phba, LPFC_EXPANDED_PAGE_SIZE,
					      wqesize,
					      LPFC_WQE_EXP_COUNT, cpu);
	} else
		qdesc = FUNC3(phba, LPFC_DEFAULT_PAGE_SIZE,
					      phba->sli4_hba.wq_esize,
					      phba->sli4_hba.wq_ecount, cpu);

	if (!qdesc) {
		FUNC2(phba, KERN_ERR, LOG_INIT,
				"0503 Failed allocate fast-path IO WQ (%d)\n",
				idx);
		return 1;
	}
	qdesc->hdwq = idx;
	qdesc->chann = cpu;
	phba->sli4_hba.hdwq[idx].io_wq = qdesc;
	FUNC0(&qdesc->wq_list, &phba->sli4_hba.lpfc_wq_list);
	return 0;
}