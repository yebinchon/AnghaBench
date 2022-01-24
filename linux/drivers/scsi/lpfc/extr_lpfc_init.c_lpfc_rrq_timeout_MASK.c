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
struct timer_list {int dummy; } ;
struct lpfc_hba {TYPE_1__* pport; int /*<<< orphan*/  hba_flag; } ;
struct TYPE_2__ {int load_flag; int /*<<< orphan*/  work_port_lock; } ;

/* Variables and functions */
 int FC_UNLOADING ; 
 int /*<<< orphan*/  HBA_RRQ_ACTIVE ; 
 struct lpfc_hba* FUNC0 (struct lpfc_hba*,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  rrq_tmr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(struct timer_list *t)
{
	struct lpfc_hba *phba;
	unsigned long iflag;

	phba = FUNC0(phba, t, rrq_tmr);
	FUNC2(&phba->pport->work_port_lock, iflag);
	if (!(phba->pport->load_flag & FC_UNLOADING))
		phba->hba_flag |= HBA_RRQ_ACTIVE;
	else
		phba->hba_flag &= ~HBA_RRQ_ACTIVE;
	FUNC3(&phba->pport->work_port_lock, iflag);

	if (!(phba->pport->load_flag & FC_UNLOADING))
		FUNC1(phba);
}