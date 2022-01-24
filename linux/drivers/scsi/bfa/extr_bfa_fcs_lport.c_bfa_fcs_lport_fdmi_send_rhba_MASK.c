#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct fchs_s {int dummy; } ;
struct ct_hdr_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  pwwn; } ;
struct bfa_fcs_lport_s {int /*<<< orphan*/  lp_tag; TYPE_3__* fabric; TYPE_4__* fcs; TYPE_2__ port_cfg; } ;
struct bfa_fcs_lport_fdmi_s {struct bfa_fcxp_s* fcxp; int /*<<< orphan*/  fcxp_wqe; TYPE_1__* ms; } ;
struct TYPE_9__ {int /*<<< orphan*/  bfa; } ;
struct TYPE_8__ {int /*<<< orphan*/  vf_id; } ;
struct TYPE_6__ {struct bfa_fcs_lport_s* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  FC_CLASS_3 ; 
 int /*<<< orphan*/  FC_FCCT_TOV ; 
 int /*<<< orphan*/  FC_MAX_PDUSZ ; 
 int /*<<< orphan*/  FDMISM_EVENT_RHBA_SENT ; 
 int /*<<< orphan*/  FDMI_RHBA ; 
 struct bfa_fcxp_s* FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void (*) (void*,struct bfa_fcxp_s*),struct bfa_fcs_lport_fdmi_s*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bfa_fcs_lport_fdmi_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_lport_fdmi_rhba_response ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/ * FUNC4 (struct bfa_fcxp_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcxp_s*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct fchs_s*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcs_lport_fdmi_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct fchs_s*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(void *fdmi_cbarg, struct bfa_fcxp_s *fcxp_alloced)
{
	struct bfa_fcs_lport_fdmi_s *fdmi = fdmi_cbarg;
	struct bfa_fcs_lport_s *port = fdmi->ms->port;
	struct fchs_s fchs;
	int             len, attr_len;
	struct bfa_fcxp_s *fcxp;
	u8        *pyld;

	FUNC7(port->fcs, port->port_cfg.pwwn);

	fcxp = fcxp_alloced ? fcxp_alloced :
	       FUNC0(port->fcs, BFA_TRUE);
	if (!fcxp) {
		FUNC1(port->fcs->bfa, &fdmi->fcxp_wqe,
				bfa_fcs_lport_fdmi_send_rhba, fdmi, BFA_TRUE);
		return;
	}
	fdmi->fcxp = fcxp;

	pyld = FUNC4(fcxp);
	FUNC9(pyld, 0, FC_MAX_PDUSZ);

	len = FUNC8(&fchs, pyld, FUNC3(port),
				   FDMI_RHBA);

	attr_len =
		FUNC2(fdmi,
					  (u8 *) ((struct ct_hdr_s *) pyld
						       + 1));

	FUNC5(fcxp, NULL, port->fabric->vf_id, port->lp_tag, BFA_FALSE,
			  FC_CLASS_3, (len + attr_len), &fchs,
			  bfa_fcs_lport_fdmi_rhba_response, (void *)fdmi,
			  FC_MAX_PDUSZ, FC_FCCT_TOV);

	FUNC6(fdmi, FDMISM_EVENT_RHBA_SENT);
}