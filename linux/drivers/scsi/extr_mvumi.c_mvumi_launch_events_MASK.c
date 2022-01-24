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
typedef  int u32 ;
struct mvumi_hba {int /*<<< orphan*/  dm_thread; int /*<<< orphan*/  pnp_count; } ;
struct mvumi_events_wq {int /*<<< orphan*/  work_q; int /*<<< orphan*/ * param; int /*<<< orphan*/  event; struct mvumi_hba* mhba; } ;

/* Variables and functions */
 int /*<<< orphan*/  APICDB1_EVENT_GETEVENT ; 
 int DRBL_BUS_CHANGE ; 
 int DRBL_EVENT_NOTIFY ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mvumi_events_wq* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mvumi_scan_events ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mvumi_hba *mhba, u32 isr_status)
{
	struct mvumi_events_wq *mu_ev;

	while (isr_status & (DRBL_BUS_CHANGE | DRBL_EVENT_NOTIFY)) {
		if (isr_status & DRBL_BUS_CHANGE) {
			FUNC1(&mhba->pnp_count);
			FUNC4(mhba->dm_thread);
			isr_status &= ~(DRBL_BUS_CHANGE);
			continue;
		}

		mu_ev = FUNC2(sizeof(*mu_ev), GFP_ATOMIC);
		if (mu_ev) {
			FUNC0(&mu_ev->work_q, mvumi_scan_events);
			mu_ev->mhba = mhba;
			mu_ev->event = APICDB1_EVENT_GETEVENT;
			isr_status &= ~(DRBL_EVENT_NOTIFY);
			mu_ev->param = NULL;
			FUNC3(&mu_ev->work_q);
		}
	}
}