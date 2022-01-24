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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct fchs_s {scalar_t__ s_id; scalar_t__ type; scalar_t__ routing; scalar_t__ cat_info; scalar_t__ d_id; } ;
struct fc_rnid_cmd_s {int dummy; } ;
struct fc_logi_s {int dummy; } ;
struct fc_els_cmd_s {scalar_t__ els_code; } ;
struct fc_echo_s {int dummy; } ;
struct bfa_fcs_rport_s {int /*<<< orphan*/  fcs; } ;
struct bfa_fcs_lport_s {int /*<<< orphan*/  fcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CT_NS_EXP_NOADDITIONAL ; 
 int /*<<< orphan*/  CT_RSN_NOT_SUPP ; 
 scalar_t__ FC_CAT_ABTS ; 
 scalar_t__ FC_ELS_ECHO ; 
 scalar_t__ FC_ELS_LOGO ; 
 scalar_t__ FC_ELS_PLOGI ; 
 scalar_t__ FC_ELS_PRLI ; 
 scalar_t__ FC_ELS_RNID ; 
 scalar_t__ FC_ELS_RSCN ; 
 int /*<<< orphan*/  FC_LS_RJT_EXP_NO_ADDL_INFO ; 
 int /*<<< orphan*/  FC_LS_RJT_RSN_CMD_NOT_SUPP ; 
 int /*<<< orphan*/  FC_LS_RJT_RSN_UNABLE_TO_PERF_CMD ; 
 scalar_t__ FC_RTG_BASIC_LINK ; 
 scalar_t__ FC_TYPE_BLS ; 
 scalar_t__ FC_TYPE_ELS ; 
 scalar_t__ FC_TYPE_FC_FSS ; 
 scalar_t__ FC_TYPE_SERVICES ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_lport_s*,struct fchs_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_lport_s*,struct fchs_s*,struct fc_echo_s*,int /*<<< orphan*/ ) ; 
 struct bfa_fcs_rport_s* FUNC2 (struct bfa_fcs_lport_s*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_lport_s*,struct fchs_s*,struct fc_logi_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_lport_s*,struct fchs_s*,struct fc_rnid_cmd_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcs_lport_s*,struct fchs_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_fcs_lport_s*,struct fchs_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bfa_fcs_lport_s*,struct fchs_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bfa_fcs_rport_s*,struct fchs_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct bfa_fcs_lport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  plogi_rcvd ; 
 int /*<<< orphan*/  uf_recv_drops ; 
 int /*<<< orphan*/  uf_recvs ; 

void
FUNC13(struct bfa_fcs_lport_s *lport,
			struct fchs_s *fchs, u16 len)
{
	u32	pid = fchs->s_id;
	struct bfa_fcs_rport_s *rport = NULL;
	struct fc_els_cmd_s *els_cmd = (struct fc_els_cmd_s *) (fchs + 1);

	FUNC11(lport, uf_recvs);
	FUNC12(lport->fcs, fchs->type);

	if (!FUNC3(lport)) {
		/*
		 * In direct attach topology, it is possible to get a PLOGI
		 * before the lport is online due to port feature
		 * (QoS/Trunk/FEC/CR), so send a rjt
		 */
		if ((fchs->type == FC_TYPE_ELS) &&
			(els_cmd->els_code == FC_ELS_PLOGI)) {
			FUNC8(lport, fchs,
				FC_LS_RJT_RSN_UNABLE_TO_PERF_CMD,
				FC_LS_RJT_EXP_NO_ADDL_INFO);
			FUNC11(lport, plogi_rcvd);
		} else
			FUNC11(lport, uf_recv_drops);

		return;
	}

	/*
	 * First, handle ELSs that donot require a login.
	 */
	/*
	 * Handle PLOGI first
	 */
	if ((fchs->type == FC_TYPE_ELS) &&
		(els_cmd->els_code == FC_ELS_PLOGI)) {
		FUNC4(lport, fchs, (struct fc_logi_s *) els_cmd);
		return;
	}

	/*
	 * Handle ECHO separately.
	 */
	if ((fchs->type == FC_TYPE_ELS) && (els_cmd->els_code == FC_ELS_ECHO)) {
		FUNC1(lport, fchs,
				(struct fc_echo_s *)els_cmd, len);
		return;
	}

	/*
	 * Handle RNID separately.
	 */
	if ((fchs->type == FC_TYPE_ELS) && (els_cmd->els_code == FC_ELS_RNID)) {
		FUNC5(lport, fchs,
			(struct fc_rnid_cmd_s *) els_cmd, len);
		return;
	}

	if (fchs->type == FC_TYPE_BLS) {
		if ((fchs->routing == FC_RTG_BASIC_LINK) &&
				(fchs->cat_info == FC_CAT_ABTS))
			FUNC0(lport, fchs);
		return;
	}

	if (fchs->type == FC_TYPE_SERVICES) {
		/*
		 * Unhandled FC-GS frames. Send a FC-CT Reject
		 */
		FUNC7(lport, fchs, CT_RSN_NOT_SUPP,
				CT_NS_EXP_NOADDITIONAL);
		return;
	}

	/*
	 * look for a matching remote port ID
	 */
	rport = FUNC2(lport, pid);
	if (rport) {
		FUNC12(rport->fcs, fchs->s_id);
		FUNC12(rport->fcs, fchs->d_id);
		FUNC12(rport->fcs, fchs->type);

		FUNC9(rport, fchs, len);
		return;
	}

	/*
	 * Only handles ELS frames for now.
	 */
	if (fchs->type != FC_TYPE_ELS) {
		FUNC12(lport->fcs, fchs->s_id);
		FUNC12(lport->fcs, fchs->d_id);
		/* ignore type FC_TYPE_FC_FSS */
		if (fchs->type != FC_TYPE_FC_FSS)
			FUNC10(lport->fcs, fchs->type);
		return;
	}

	FUNC12(lport->fcs, els_cmd->els_code);
	if (els_cmd->els_code == FC_ELS_RSCN) {
		FUNC6(lport, fchs, len);
		return;
	}

	if (els_cmd->els_code == FC_ELS_LOGO) {
		/*
		 * @todo Handle LOGO frames received.
		 */
		return;
	}

	if (els_cmd->els_code == FC_ELS_PRLI) {
		/*
		 * @todo Handle PRLI frames received.
		 */
		return;
	}

	/*
	 * Unhandled ELS frames. Send a LS_RJT.
	 */
	FUNC8(lport, fchs, FC_LS_RJT_RSN_CMD_NOT_SUPP,
				 FC_LS_RJT_EXP_NO_ADDL_INFO);

}