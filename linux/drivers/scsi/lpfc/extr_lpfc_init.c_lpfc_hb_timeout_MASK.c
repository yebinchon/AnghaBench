#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct timer_list {int dummy; } ;
struct lpfc_hba {TYPE_1__* pport; } ;
struct TYPE_2__ {int work_port_events; int /*<<< orphan*/  work_port_lock; } ;

/* Variables and functions */
 int WORKER_HB_TMO ; 
 struct lpfc_hba* FUNC0 (struct lpfc_hba*,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hb_tmofunc ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(struct timer_list *t)
{
	struct lpfc_hba *phba;
	uint32_t tmo_posted;
	unsigned long iflag;

	phba = FUNC0(phba, t, hb_tmofunc);

	/* Check for heart beat timeout conditions */
	FUNC2(&phba->pport->work_port_lock, iflag);
	tmo_posted = phba->pport->work_port_events & WORKER_HB_TMO;
	if (!tmo_posted)
		phba->pport->work_port_events |= WORKER_HB_TMO;
	FUNC3(&phba->pport->work_port_lock, iflag);

	/* Tell the worker thread there is work to do */
	if (!tmo_posted)
		FUNC1(phba);
	return;
}