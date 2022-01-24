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
struct timer_list {int dummy; } ;
struct lpfc_work_evt {int /*<<< orphan*/  evt_listp; int /*<<< orphan*/  evt; scalar_t__ evt_arg1; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_nodelist {struct lpfc_work_evt els_retry_evt; struct lpfc_vport* vport; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; int /*<<< orphan*/  work_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPFC_EVT_ELS_RETRY ; 
 struct lpfc_nodelist* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*) ; 
 struct lpfc_nodelist* ndlp ; 
 int /*<<< orphan*/  nlp_delayfunc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC7(struct timer_list *t)
{
	struct lpfc_nodelist *ndlp = FUNC0(ndlp, t, nlp_delayfunc);
	struct lpfc_vport *vport = ndlp->vport;
	struct lpfc_hba   *phba = vport->phba;
	unsigned long flags;
	struct lpfc_work_evt  *evtp = &ndlp->els_retry_evt;

	FUNC5(&phba->hbalock, flags);
	if (!FUNC2(&evtp->evt_listp)) {
		FUNC6(&phba->hbalock, flags);
		return;
	}

	/* We need to hold the node by incrementing the reference
	 * count until the queued work is done
	 */
	evtp->evt_arg1  = FUNC3(ndlp);
	if (evtp->evt_arg1) {
		evtp->evt = LPFC_EVT_ELS_RETRY;
		FUNC1(&evtp->evt_listp, &phba->work_list);
		FUNC4(phba);
	}
	FUNC6(&phba->hbalock, flags);
	return;
}