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
typedef  int /*<<< orphan*/  u16 ;
struct fchs_s {scalar_t__ s_id; scalar_t__ d_id; scalar_t__ type; } ;
struct fc_els_cmd_s {scalar_t__ els_code; } ;
struct bfa_fcs_rport_s {int /*<<< orphan*/  itnim; int /*<<< orphan*/  fcs; struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {int dummy; } ;

/* Variables and functions */
#define  FC_ELS_ADISC 132 
#define  FC_ELS_LOGO 131 
#define  FC_ELS_PRLI 130 
#define  FC_ELS_PRLO 129 
#define  FC_ELS_RPSC 128 
 int /*<<< orphan*/  FC_LS_RJT_EXP_NO_ADDL_INFO ; 
 int /*<<< orphan*/  FC_LS_RJT_RSN_CMD_NOT_SUPP ; 
 scalar_t__ FC_TYPE_ELS ; 
 int /*<<< orphan*/  adisc_rcvd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fchs_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_rport_s*,struct fchs_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_rport_s*,struct fchs_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_rport_s*,struct fchs_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_rport_s*,struct fchs_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcs_rport_s*,struct fchs_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_fcs_lport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  plogi_rcvd ; 
 int /*<<< orphan*/  prli_rcvd ; 
 int /*<<< orphan*/  prlo_rcvd ; 
 int /*<<< orphan*/  rpsc_rcvd ; 
 int /*<<< orphan*/  un_handled_els_rcvd ; 

void
FUNC9(struct bfa_fcs_rport_s *rport,
			struct fchs_s *fchs, u16 len)
{
	struct bfa_fcs_lport_s *port = rport->port;
	struct fc_els_cmd_s	*els_cmd;

	FUNC8(rport->fcs, fchs->s_id);
	FUNC8(rport->fcs, fchs->d_id);
	FUNC8(rport->fcs, fchs->type);

	if (fchs->type != FC_TYPE_ELS)
		return;

	els_cmd = (struct fc_els_cmd_s *) (fchs + 1);

	FUNC8(rport->fcs, els_cmd->els_code);

	switch (els_cmd->els_code) {
	case FC_ELS_LOGO:
		FUNC7(port, plogi_rcvd);
		FUNC3(rport, fchs);
		break;

	case FC_ELS_ADISC:
		FUNC7(port, adisc_rcvd);
		FUNC2(rport, fchs, len);
		break;

	case FC_ELS_PRLO:
		FUNC7(port, prlo_rcvd);
		if (FUNC1(port))
			FUNC0(rport->itnim, fchs, len);
		break;

	case FC_ELS_PRLI:
		FUNC7(port, prli_rcvd);
		FUNC4(rport, fchs, len);
		break;

	case FC_ELS_RPSC:
		FUNC7(port, rpsc_rcvd);
		FUNC5(rport, fchs, len);
		break;

	default:
		FUNC7(port, un_handled_els_rcvd);
		FUNC6(rport, fchs,
					  FC_LS_RJT_RSN_CMD_NOT_SUPP,
					  FC_LS_RJT_EXP_NO_ADDL_INFO);
		break;
	}
}