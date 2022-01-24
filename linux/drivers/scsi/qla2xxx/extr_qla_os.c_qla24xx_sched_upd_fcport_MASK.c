#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ disc_state; int /*<<< orphan*/  reg_work; TYPE_1__* vha; int /*<<< orphan*/  next_disc_state; scalar_t__ sec_since_registration; int /*<<< orphan*/  jiffies_at_registration; int /*<<< orphan*/  d_id; } ;
typedef  TYPE_2__ fc_port_t ;
struct TYPE_4__ {int /*<<< orphan*/  work_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSC_DELETED ; 
 scalar_t__ DSC_UPD_FCPORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  system_unbound_wq ; 

void FUNC4(fc_port_t *fcport)
{
	unsigned long flags;

	if (FUNC0(fcport->d_id))
		return;

	FUNC2(&fcport->vha->work_lock, flags);
	if (fcport->disc_state == DSC_UPD_FCPORT) {
		FUNC3(&fcport->vha->work_lock, flags);
		return;
	}
	fcport->jiffies_at_registration = jiffies;
	fcport->sec_since_registration = 0;
	fcport->next_disc_state = DSC_DELETED;
	fcport->disc_state = DSC_UPD_FCPORT;
	FUNC3(&fcport->vha->work_lock, flags);

	FUNC1(system_unbound_wq, &fcport->reg_work);
}