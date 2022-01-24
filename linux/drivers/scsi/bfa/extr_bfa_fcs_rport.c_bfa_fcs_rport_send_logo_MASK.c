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
typedef  int /*<<< orphan*/  u16 ;
struct fchs_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  logos; } ;
struct bfa_fcs_rport_s {struct bfa_fcxp_s* fcxp; TYPE_2__ stats; int /*<<< orphan*/  pid; int /*<<< orphan*/  fcxp_wqe; struct bfa_fcs_lport_s* port; int /*<<< orphan*/  fcs; } ;
struct bfa_fcs_lport_s {int /*<<< orphan*/  lp_tag; TYPE_1__* fabric; TYPE_3__* fcs; } ;
struct TYPE_6__ {int /*<<< orphan*/  bfa; } ;
struct TYPE_4__ {int /*<<< orphan*/  vf_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  FC_CLASS_3 ; 
 int /*<<< orphan*/  FC_ELS_TOV ; 
 int /*<<< orphan*/  FC_MAX_PDUSZ ; 
 int /*<<< orphan*/  RPSM_EVENT_FCXP_SENT ; 
 struct bfa_fcxp_s* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void (*) (void*,struct bfa_fcxp_s*),struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcxp_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcxp_s*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcxp_s*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fchs_s*,int /*<<< orphan*/ *,struct bfa_fcs_rport_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fchs_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(void *rport_cbarg, struct bfa_fcxp_s *fcxp_alloced)
{
	struct bfa_fcs_rport_s *rport = rport_cbarg;
	struct bfa_fcs_lport_s *port;
	struct fchs_s	fchs;
	struct bfa_fcxp_s *fcxp;
	u16	len;

	FUNC8(rport->fcs, rport->pid);

	port = rport->port;

	fcxp = fcxp_alloced ? fcxp_alloced :
	       FUNC0(port->fcs, BFA_FALSE);
	if (!fcxp) {
		FUNC1(port->fcs->bfa, &rport->fcxp_wqe,
				bfa_fcs_rport_send_logo, rport, BFA_FALSE);
		return;
	}
	rport->fcxp = fcxp;

	len = FUNC9(&fchs, FUNC5(fcxp), rport->pid,
				FUNC2(port), 0,
				FUNC3(port));

	FUNC6(fcxp, NULL, port->fabric->vf_id, port->lp_tag, BFA_FALSE,
			FC_CLASS_3, len, &fchs, NULL,
			rport, FC_MAX_PDUSZ, FC_ELS_TOV);

	rport->stats.logos++;
	FUNC4(rport->fcxp);
	FUNC7(rport, RPSM_EVENT_FCXP_SENT);
}