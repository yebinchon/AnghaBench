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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct fchs_s {int dummy; } ;
struct fc_rpsc2_acc_s {scalar_t__ els_cmd; scalar_t__ num_pids; TYPE_1__* port_info; } ;
struct fc_ls_rjt_s {scalar_t__ reason_code; scalar_t__ reason_code_expl; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rpsc_rejects; int /*<<< orphan*/  rpsc_accs; int /*<<< orphan*/  rpsc_failed; } ;
struct bfa_fcs_rport_s {TYPE_2__ stats; int /*<<< orphan*/  fcs; int /*<<< orphan*/  pid; } ;
struct bfa_fcs_rpf_s {int /*<<< orphan*/  rpsc_speed; struct bfa_fcs_rport_s* rport; } ;
typedef  scalar_t__ bfa_status_t ;
struct TYPE_3__ {scalar_t__ speed; scalar_t__ index; scalar_t__ type; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bfa_fcxp_s*) ; 
 scalar_t__ BFA_STATUS_ETIMER ; 
 scalar_t__ BFA_STATUS_OK ; 
 scalar_t__ FC_ELS_ACC ; 
 scalar_t__ FC_LS_RJT_RSN_CMD_NOT_SUPP ; 
 int /*<<< orphan*/  RPFSM_EVENT_RPSC_COMP ; 
 int /*<<< orphan*/  RPFSM_EVENT_RPSC_ERROR ; 
 int /*<<< orphan*/  RPFSM_EVENT_RPSC_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_rpf_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void
FUNC8(void *fcsarg, struct bfa_fcxp_s *fcxp, void *cbarg,
			    bfa_status_t req_status, u32 rsp_len,
			    u32 resid_len, struct fchs_s *rsp_fchs)
{
	struct bfa_fcs_rpf_s *rpf = (struct bfa_fcs_rpf_s *) cbarg;
	struct bfa_fcs_rport_s *rport = rpf->rport;
	struct fc_ls_rjt_s *ls_rjt;
	struct fc_rpsc2_acc_s *rpsc2_acc;
	u16	num_ents;

	FUNC6(rport->fcs, req_status);

	if (req_status != BFA_STATUS_OK) {
		FUNC6(rport->fcs, req_status);
		if (req_status == BFA_STATUS_ETIMER)
			rport->stats.rpsc_failed++;
		FUNC5(rpf, RPFSM_EVENT_RPSC_ERROR);
		return;
	}

	rpsc2_acc = (struct fc_rpsc2_acc_s *) FUNC0(fcxp);
	if (rpsc2_acc->els_cmd == FC_ELS_ACC) {
		rport->stats.rpsc_accs++;
		num_ents = FUNC2(rpsc2_acc->num_pids);
		FUNC6(rport->fcs, num_ents);
		if (num_ents > 0) {
			FUNC1(FUNC3(rpsc2_acc->port_info[0].pid) !=
						FUNC4(rport->pid));
			FUNC6(rport->fcs,
				FUNC3(rpsc2_acc->port_info[0].pid));
			FUNC6(rport->fcs,
				FUNC2(rpsc2_acc->port_info[0].speed));
			FUNC6(rport->fcs,
				FUNC2(rpsc2_acc->port_info[0].index));
			FUNC6(rport->fcs,
				rpsc2_acc->port_info[0].type);

			if (rpsc2_acc->port_info[0].speed == 0) {
				FUNC5(rpf, RPFSM_EVENT_RPSC_ERROR);
				return;
			}

			rpf->rpsc_speed = FUNC7(
				FUNC2(rpsc2_acc->port_info[0].speed));

			FUNC5(rpf, RPFSM_EVENT_RPSC_COMP);
		}
	} else {
		ls_rjt = (struct fc_ls_rjt_s *) FUNC0(fcxp);
		FUNC6(rport->fcs, ls_rjt->reason_code);
		FUNC6(rport->fcs, ls_rjt->reason_code_expl);
		rport->stats.rpsc_rejects++;
		if (ls_rjt->reason_code == FC_LS_RJT_RSN_CMD_NOT_SUPP)
			FUNC5(rpf, RPFSM_EVENT_RPSC_FAIL);
		else
			FUNC5(rpf, RPFSM_EVENT_RPSC_ERROR);
	}
}