#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct bfa_fcs_lport_ns_s {TYPE_3__* port; int /*<<< orphan*/  fcxp; int /*<<< orphan*/  timer; } ;
typedef  enum vport_ns_event { ____Placeholder_vport_ns_event } vport_ns_event ;
struct TYPE_8__ {int /*<<< orphan*/  ns_retries; } ;
struct TYPE_7__ {int pwwn; } ;
struct TYPE_9__ {int /*<<< orphan*/  fcs; TYPE_2__ stats; TYPE_1__ port_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  BFA_FCS_RETRY_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
#define  NSSM_EVENT_PORT_OFFLINE 130 
#define  NSSM_EVENT_RSP_ERROR 129 
#define  NSSM_EVENT_RSP_OK 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_lport_ns_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_lport_ns_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_lport_ns_sm_online ; 
 int /*<<< orphan*/  bfa_fcs_lport_ns_sm_rff_id_retry ; 
 int /*<<< orphan*/  bfa_fcs_lport_ns_sm_sending_gid_ft ; 
 int /*<<< orphan*/  bfa_fcs_lport_ns_timeout ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bfa_fcs_lport_ns_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_fcs_lport_ns_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC11(struct bfa_fcs_lport_ns_s *ns,
			enum vport_ns_event event)
{
	FUNC10(ns->port->fcs, ns->port->port_cfg.pwwn);
	FUNC10(ns->port->fcs, event);

	switch (event) {
	case NSSM_EVENT_RSP_OK:

		/*
		 * If min cfg mode is enabled, we donot initiate rport
		 * discovery with the fabric. Instead, we will retrieve the
		 * boot targets from HAL/FW.
		 */
		if (FUNC2(ns->port->fcs)) {
			FUNC4(ns->port);
			FUNC8(ns, bfa_fcs_lport_ns_sm_online);
			return;
		}

		/*
		 * If the port role is Initiator Mode issue NS query.
		 * If it is Target Mode, skip this and go to online.
		 */
		if (FUNC1(ns->port)) {
			FUNC8(ns,
				bfa_fcs_lport_ns_sm_sending_gid_ft);
			FUNC5(ns, NULL);
		}
		/*
		 * kick off mgmt srvr state machine
		 */
		FUNC3(ns->port);
		break;

	case NSSM_EVENT_RSP_ERROR:
		/*
		 * Start timer for a delayed retry
		 */
		FUNC8(ns, bfa_fcs_lport_ns_sm_rff_id_retry);
		ns->port->stats.ns_retries++;
		FUNC9(FUNC0(ns->port),
				    &ns->timer, bfa_fcs_lport_ns_timeout, ns,
				    BFA_FCS_RETRY_TIMEOUT);
		break;

	case NSSM_EVENT_PORT_OFFLINE:
		FUNC8(ns, bfa_fcs_lport_ns_sm_offline);
		FUNC6(ns->fcxp);
		break;

	default:
		FUNC7(ns->port->fcs, event);
	}
}