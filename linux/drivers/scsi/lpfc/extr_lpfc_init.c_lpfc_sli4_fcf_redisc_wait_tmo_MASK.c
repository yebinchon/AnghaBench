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
struct timer_list {int dummy; } ;
struct TYPE_3__ {int fcf_flag; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; TYPE_1__ fcf; } ;
struct TYPE_4__ {int /*<<< orphan*/  redisc_wait; } ;

/* Variables and functions */
 int FCF_REDISC_EVT ; 
 int FCF_REDISC_PEND ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_FIP ; 
 TYPE_2__ fcf ; 
 struct lpfc_hba* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 struct lpfc_hba* phba ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct timer_list *t)
{
	struct lpfc_hba *phba = FUNC0(phba, t, fcf.redisc_wait);

	/* Don't send FCF rediscovery event if timer cancelled */
	FUNC3(&phba->hbalock);
	if (!(phba->fcf.fcf_flag & FCF_REDISC_PEND)) {
		FUNC4(&phba->hbalock);
		return;
	}
	/* Clear FCF rediscovery timer pending flag */
	phba->fcf.fcf_flag &= ~FCF_REDISC_PEND;
	/* FCF rediscovery event to worker thread */
	phba->fcf.fcf_flag |= FCF_REDISC_EVT;
	FUNC4(&phba->hbalock);
	FUNC1(phba, KERN_INFO, LOG_FIP,
			"2776 FCF rediscover quiescent timer expired\n");
	/* wake up worker thread */
	FUNC2(phba);
}