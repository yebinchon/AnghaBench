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
struct TYPE_3__ {scalar_t__ (* fcp_cmd_send ) (struct fc_lport*,struct fc_fcp_pkt*,int /*<<< orphan*/ ) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct TYPE_4__ {void (* function ) (struct timer_list*) ;} ;
struct fc_fcp_pkt {TYPE_2__ timer; int /*<<< orphan*/  recov_retry; struct fc_lport* lp; } ;

/* Variables and functions */
 scalar_t__ FC_MAX_RECOV_RETRY ; 
 scalar_t__ FUNC0 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_fcp_pkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  fc_tm_done ; 
 struct fc_fcp_pkt* FUNC3 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct fc_fcp_pkt* fsp ; 
 int /*<<< orphan*/  FUNC4 (struct fc_fcp_pkt*) ; 
 scalar_t__ FUNC5 (struct fc_lport*,struct fc_fcp_pkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct fc_fcp_pkt *fsp = FUNC3(fsp, t, timer);
	struct fc_lport *lport = fsp->lp;

	if (lport->tt.fcp_cmd_send(lport, fsp, fc_tm_done)) {
		if (fsp->recov_retry++ >= FC_MAX_RECOV_RETRY)
			return;
		if (FUNC0(fsp))
			return;
		fsp->timer.function = fc_lun_reset_send;
		FUNC1(fsp, FUNC4(fsp));
		FUNC2(fsp);
	}
}