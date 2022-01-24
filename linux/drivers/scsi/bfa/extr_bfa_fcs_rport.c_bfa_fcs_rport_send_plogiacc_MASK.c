#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fchs_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct bfa_fcs_rport_s {int /*<<< orphan*/  reply_oxid; int /*<<< orphan*/  pid; struct bfa_fcxp_s* fcxp; int /*<<< orphan*/  fcxp_wqe; int /*<<< orphan*/  fcs; int /*<<< orphan*/  pwwn; struct bfa_fcs_lport_s* port; } ;
struct TYPE_4__ {int /*<<< orphan*/  nwwn; int /*<<< orphan*/  pwwn; } ;
struct bfa_fcs_lport_s {int /*<<< orphan*/  lp_tag; TYPE_2__* fabric; TYPE_3__* fcs; TYPE_1__ port_cfg; } ;
struct TYPE_6__ {int /*<<< orphan*/  bfa; } ;
struct TYPE_5__ {int /*<<< orphan*/  vf_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  FC_CLASS_3 ; 
 int /*<<< orphan*/  FC_MAX_PDUSZ ; 
 int /*<<< orphan*/  RPSM_EVENT_FCXP_SENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct bfa_fcxp_s* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void (*) (void*,struct bfa_fcxp_s*),struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcxp_s*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcxp_s*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct fchs_s*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct fchs_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(void *rport_cbarg, struct bfa_fcxp_s *fcxp_alloced)
{
	struct bfa_fcs_rport_s *rport = rport_cbarg;
	struct bfa_fcs_lport_s *port = rport->port;
	struct fchs_s		fchs;
	int		len;
	struct bfa_fcxp_s *fcxp;

	FUNC8(rport->fcs, rport->pwwn);
	FUNC8(rport->fcs, rport->reply_oxid);

	fcxp = fcxp_alloced ? fcxp_alloced :
	       FUNC2(port->fcs, BFA_FALSE);
	if (!fcxp) {
		FUNC3(port->fcs->bfa, &rport->fcxp_wqe,
				bfa_fcs_rport_send_plogiacc, rport, BFA_FALSE);
		return;
	}
	rport->fcxp = fcxp;

	len = FUNC9(&fchs, FUNC5(fcxp),
				 rport->pid, FUNC4(port),
				 rport->reply_oxid, port->port_cfg.pwwn,
				 port->port_cfg.nwwn,
				 FUNC0(port->fcs->bfa),
				 FUNC1(port->fcs->bfa));

	FUNC6(fcxp, NULL, port->fabric->vf_id, port->lp_tag, BFA_FALSE,
			FC_CLASS_3, len, &fchs, NULL, NULL, FC_MAX_PDUSZ, 0);

	FUNC7(rport, RPSM_EVENT_FCXP_SENT);
}