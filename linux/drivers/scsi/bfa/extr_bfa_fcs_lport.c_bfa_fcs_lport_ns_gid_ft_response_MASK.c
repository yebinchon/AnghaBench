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
typedef  int u32 ;
struct fchs_s {int dummy; } ;
struct ct_hdr_s {int cmd_rsp_code; int reason_code; int exp_code; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ns_gidft_unknown_rsp; int /*<<< orphan*/  ns_gidft_rejects; int /*<<< orphan*/  ns_gidft_accepts; int /*<<< orphan*/  ns_gidft_rsp_err; } ;
struct TYPE_3__ {int pwwn; } ;
struct bfa_fcs_lport_s {int /*<<< orphan*/  fcs; TYPE_2__ stats; TYPE_1__ port_cfg; } ;
struct bfa_fcs_lport_ns_s {struct bfa_fcs_lport_s* port; } ;
typedef  int bfa_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bfa_fcxp_s*) ; 
 int BFA_STATUS_OK ; 
 int CT_NS_EXP_FT_NOT_REG ; 
 int CT_RSN_UNABLE_TO_PERF ; 
#define  CT_RSP_ACCEPT 129 
#define  CT_RSP_REJECT 128 
 int /*<<< orphan*/  NSSM_EVENT_RSP_ERROR ; 
 int /*<<< orphan*/  NSSM_EVENT_RSP_OK ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_lport_s*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_lport_ns_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(void *fcsarg, struct bfa_fcxp_s *fcxp,
				void *cbarg, bfa_status_t req_status,
				u32 rsp_len, u32 resid_len,
				struct fchs_s *rsp_fchs)
{
	struct bfa_fcs_lport_ns_s *ns = (struct bfa_fcs_lport_ns_s *) cbarg;
	struct bfa_fcs_lport_s *port = ns->port;
	struct ct_hdr_s *cthdr = NULL;
	u32        n_pids;

	FUNC4(port->fcs, port->port_cfg.pwwn);

	/*
	 * Sanity Checks
	 */
	if (req_status != BFA_STATUS_OK) {
		FUNC4(port->fcs, req_status);
		port->stats.ns_gidft_rsp_err++;
		FUNC3(ns, NSSM_EVENT_RSP_ERROR);
		return;
	}

	if (resid_len != 0) {
		/*
		 * TBD : we will need to allocate a larger buffer & retry the
		 * command
		 */
		FUNC4(port->fcs, rsp_len);
		FUNC4(port->fcs, resid_len);
		return;
	}

	cthdr = (struct ct_hdr_s *) FUNC0(fcxp);
	cthdr->cmd_rsp_code = FUNC1(cthdr->cmd_rsp_code);

	switch (cthdr->cmd_rsp_code) {

	case CT_RSP_ACCEPT:

		port->stats.ns_gidft_accepts++;
		n_pids = (FUNC5(rsp_len) / sizeof(u32));
		FUNC4(port->fcs, n_pids);
		FUNC2(port,
						   (u32 *) (cthdr + 1),
						   n_pids);
		FUNC3(ns, NSSM_EVENT_RSP_OK);
		break;

	case CT_RSP_REJECT:

		/*
		 * Check the reason code  & explanation.
		 * There may not have been any FC4 devices in the fabric
		 */
		port->stats.ns_gidft_rejects++;
		FUNC4(port->fcs, cthdr->reason_code);
		FUNC4(port->fcs, cthdr->exp_code);

		if ((cthdr->reason_code == CT_RSN_UNABLE_TO_PERF)
		    && (cthdr->exp_code == CT_NS_EXP_FT_NOT_REG)) {

			FUNC3(ns, NSSM_EVENT_RSP_OK);
		} else {
			/*
			 * for all other errors, retry
			 */
			FUNC3(ns, NSSM_EVENT_RSP_ERROR);
		}
		break;

	default:
		port->stats.ns_gidft_unknown_rsp++;
		FUNC4(port->fcs, cthdr->cmd_rsp_code);
		FUNC3(ns, NSSM_EVENT_RSP_ERROR);
	}
}