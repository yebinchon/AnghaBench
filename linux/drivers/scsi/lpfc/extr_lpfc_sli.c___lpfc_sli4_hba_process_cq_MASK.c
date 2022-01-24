#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lpfc_queue {int /*<<< orphan*/  chann; int /*<<< orphan*/  queue_id; int /*<<< orphan*/  sched_irqwork; struct lpfc_hba* phba; } ;
struct lpfc_hba {int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int FUNC0 (struct lpfc_hba*,struct lpfc_queue*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_sli4_fp_handle_cqe ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(struct lpfc_queue *cq)
{
	struct lpfc_hba *phba = cq->phba;
	unsigned long delay;
	bool workposted = false;

	/* process and rearm the CQ */
	workposted |= FUNC0(phba, cq, lpfc_sli4_fp_handle_cqe,
					     &delay);

	if (delay) {
		if (!FUNC3(cq->chann, phba->wq,
					   &cq->sched_irqwork, delay))
			FUNC1(phba, KERN_ERR, LOG_SLI,
				"0367 Cannot schedule soft IRQ "
				"for cqid=%d on CPU %d\n",
				cq->queue_id, cq->chann);
	}

	/* wake up worker thread if there are works to be done */
	if (workposted)
		FUNC2(phba);
}