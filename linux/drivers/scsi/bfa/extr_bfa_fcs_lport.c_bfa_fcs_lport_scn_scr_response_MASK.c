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
typedef  int /*<<< orphan*/  u32 ;
struct fchs_s {int dummy; } ;
struct fc_ls_rjt_s {int /*<<< orphan*/  reason_code_expl; int /*<<< orphan*/  reason_code; } ;
struct fc_els_cmd_s {int els_code; } ;
struct bfa_fcxp_s {int dummy; } ;
struct bfa_fcs_lport_scn_s {struct bfa_fcs_lport_s* port; } ;
struct TYPE_2__ {int /*<<< orphan*/  pwwn; } ;
struct bfa_fcs_lport_s {int /*<<< orphan*/  fcs; TYPE_1__ port_cfg; } ;
typedef  int /*<<< orphan*/  bfa_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bfa_fcxp_s*) ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
#define  FC_ELS_ACC 129 
#define  FC_ELS_LS_RJT 128 
 int /*<<< orphan*/  SCNSM_EVENT_RSP_ERROR ; 
 int /*<<< orphan*/  SCNSM_EVENT_RSP_OK ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_lport_scn_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *fcsarg, struct bfa_fcxp_s *fcxp,
			void *cbarg, bfa_status_t req_status, u32 rsp_len,
			      u32 resid_len, struct fchs_s *rsp_fchs)
{
	struct bfa_fcs_lport_scn_s *scn = (struct bfa_fcs_lport_scn_s *) cbarg;
	struct bfa_fcs_lport_s *port = scn->port;
	struct fc_els_cmd_s *els_cmd;
	struct fc_ls_rjt_s *ls_rjt;

	FUNC2(port->fcs, port->port_cfg.pwwn);

	/*
	 * Sanity Checks
	 */
	if (req_status != BFA_STATUS_OK) {
		FUNC2(port->fcs, req_status);
		FUNC1(scn, SCNSM_EVENT_RSP_ERROR);
		return;
	}

	els_cmd = (struct fc_els_cmd_s *) FUNC0(fcxp);

	switch (els_cmd->els_code) {

	case FC_ELS_ACC:
		FUNC1(scn, SCNSM_EVENT_RSP_OK);
		break;

	case FC_ELS_LS_RJT:

		ls_rjt = (struct fc_ls_rjt_s *) FUNC0(fcxp);

		FUNC2(port->fcs, ls_rjt->reason_code);
		FUNC2(port->fcs, ls_rjt->reason_code_expl);

		FUNC1(scn, SCNSM_EVENT_RSP_ERROR);
		break;

	default:
		FUNC1(scn, SCNSM_EVENT_RSP_ERROR);
	}
}