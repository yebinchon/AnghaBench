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
struct TYPE_2__ {int /*<<< orphan*/  (* exch_mgr_reset ) (struct fc_lport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* disc_stop_final ) (struct fc_lport*) ;int /*<<< orphan*/  (* fcp_abort_io ) (struct fc_lport*) ;int /*<<< orphan*/  frame_send; } ;
struct fc_lport {int /*<<< orphan*/  retry_work; TYPE_1__ tt; int /*<<< orphan*/  lp_mutex; scalar_t__ link_up; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPORT_ST_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*) ; 
 int /*<<< orphan*/  fc_frame_drop ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_lport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct fc_lport *lport)
{
	FUNC2(&lport->lp_mutex);
	lport->state = LPORT_ST_DISABLED;
	lport->link_up = 0;
	lport->tt.frame_send = fc_frame_drop;
	FUNC3(&lport->lp_mutex);

	lport->tt.fcp_abort_io(lport);
	lport->tt.disc_stop_final(lport);
	lport->tt.exch_mgr_reset(lport, 0, 0);
	FUNC0(&lport->retry_work);
	FUNC1(lport);
	return 0;
}