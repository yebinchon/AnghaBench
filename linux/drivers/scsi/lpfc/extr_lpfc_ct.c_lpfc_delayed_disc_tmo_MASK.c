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
typedef  int uint32_t ;
struct timer_list {int dummy; } ;
struct lpfc_vport {int work_port_events; int /*<<< orphan*/  work_port_lock; struct lpfc_hba* phba; } ;
struct lpfc_hba {int dummy; } ;

/* Variables and functions */
 int WORKER_DELAYED_DISC_TMO ; 
 int /*<<< orphan*/  delayed_disc_tmo ; 
 struct lpfc_vport* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct lpfc_vport* vport ; 

void
FUNC4(struct timer_list *t)
{
	struct lpfc_vport *vport = FUNC0(vport, t, delayed_disc_tmo);
	struct lpfc_hba   *phba = vport->phba;
	uint32_t tmo_posted;
	unsigned long iflag;

	FUNC2(&vport->work_port_lock, iflag);
	tmo_posted = vport->work_port_events & WORKER_DELAYED_DISC_TMO;
	if (!tmo_posted)
		vport->work_port_events |= WORKER_DELAYED_DISC_TMO;
	FUNC3(&vport->work_port_lock, iflag);

	if (!tmo_posted)
		FUNC1(phba);
	return;
}