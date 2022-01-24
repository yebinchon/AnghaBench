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
struct fchs_s {int /*<<< orphan*/  s_id; int /*<<< orphan*/  ox_id; } ;
struct fc_logi_s {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  plogi_rcvd; } ;
struct bfa_fcs_rport_s {TYPE_1__ stats; int /*<<< orphan*/  pid; int /*<<< orphan*/  fcs; int /*<<< orphan*/  reply_oxid; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPSM_EVENT_PLOGI_RCVD ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_rport_s*,struct fc_logi_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct bfa_fcs_rport_s *rport, struct fchs_s *rx_fchs,
			struct fc_logi_s *plogi)
{
	/*
	 * @todo Handle P2P and initiator-initiator.
	 */

	FUNC0(rport, plogi);

	rport->reply_oxid = rx_fchs->ox_id;
	FUNC2(rport->fcs, rport->reply_oxid);

	rport->pid = rx_fchs->s_id;
	FUNC2(rport->fcs, rport->pid);

	rport->stats.plogi_rcvd++;
	FUNC1(rport, RPSM_EVENT_PLOGI_RCVD);
}