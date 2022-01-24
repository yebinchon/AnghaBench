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
typedef  int u8 ;
struct bfa_fcs_vport_s {int /*<<< orphan*/  lport; int /*<<< orphan*/  fdisc_retries; TYPE_1__* lps; } ;
struct TYPE_2__ {int lsrjt_rsn; int lsrjt_expl; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FCS_VPORT_MAX_RETRIES ; 
 int /*<<< orphan*/  BFA_FCS_VPORT_SM_FABRIC_MAX ; 
 int /*<<< orphan*/  BFA_FCS_VPORT_SM_RSP_DUP_WWN ; 
 int /*<<< orphan*/  BFA_FCS_VPORT_SM_RSP_ERROR ; 
 int /*<<< orphan*/  BFA_LPORT_AEN_NPIV_DUP_WWN ; 
 int /*<<< orphan*/  BFA_LPORT_AEN_NPIV_FABRIC_MAX ; 
 int /*<<< orphan*/  BFA_LPORT_AEN_NPIV_UNKNOWN ; 
#define  FC_LS_RJT_EXP_INSUFF_RES 130 
#define  FC_LS_RJT_EXP_INVALID_NPORT_ID 129 
#define  FC_LS_RJT_EXP_INV_PORT_NAME 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_vport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct bfa_fcs_vport_s *vport)
{
	u8		lsrjt_rsn = vport->lps->lsrjt_rsn;
	u8		lsrjt_expl = vport->lps->lsrjt_expl;

	FUNC3(FUNC0(vport), lsrjt_rsn);
	FUNC3(FUNC0(vport), lsrjt_expl);

	/* For certain reason codes, we don't want to retry. */
	switch (vport->lps->lsrjt_expl) {
	case FC_LS_RJT_EXP_INV_PORT_NAME: /* by brocade */
	case FC_LS_RJT_EXP_INVALID_NPORT_ID: /* by Cisco */
		if (vport->fdisc_retries < BFA_FCS_VPORT_MAX_RETRIES)
			FUNC2(vport, BFA_FCS_VPORT_SM_RSP_ERROR);
		else {
			FUNC1(&vport->lport,
					BFA_LPORT_AEN_NPIV_DUP_WWN);
			FUNC2(vport, BFA_FCS_VPORT_SM_RSP_DUP_WWN);
		}
		break;

	case FC_LS_RJT_EXP_INSUFF_RES:
		/*
		 * This means max logins per port/switch setting on the
		 * switch was exceeded.
		 */
		if (vport->fdisc_retries < BFA_FCS_VPORT_MAX_RETRIES)
			FUNC2(vport, BFA_FCS_VPORT_SM_RSP_ERROR);
		else {
			FUNC1(&vport->lport,
					BFA_LPORT_AEN_NPIV_FABRIC_MAX);
			FUNC2(vport, BFA_FCS_VPORT_SM_FABRIC_MAX);
		}
		break;

	default:
		if (vport->fdisc_retries == 0)
			FUNC1(&vport->lport,
					BFA_LPORT_AEN_NPIV_UNKNOWN);
		FUNC2(vport, BFA_FCS_VPORT_SM_RSP_ERROR);
	}
}