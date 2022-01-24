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
struct bfa_fcs_lport_ns_s {TYPE_3__* port; int /*<<< orphan*/  fcxp; int /*<<< orphan*/  num_rnnid_retries; int /*<<< orphan*/  timer; } ;
typedef  enum vport_ns_event { ____Placeholder_vport_ns_event } vport_ns_event ;
struct TYPE_5__ {int /*<<< orphan*/  ns_retries; } ;
struct TYPE_4__ {int pwwn; } ;
struct TYPE_6__ {int /*<<< orphan*/  fcs; TYPE_2__ stats; TYPE_1__ port_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  BFA_FCS_RETRY_TIMEOUT ; 
#define  NSSM_EVENT_PORT_OFFLINE 130 
#define  NSSM_EVENT_RSP_ERROR 129 
#define  NSSM_EVENT_RSP_OK 128 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_lport_ns_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_lport_ns_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_lport_ns_sm_plogi_retry ; 
 int /*<<< orphan*/  bfa_fcs_lport_ns_sm_sending_rnn_id ; 
 int /*<<< orphan*/  bfa_fcs_lport_ns_timeout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcs_lport_ns_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_fcs_lport_ns_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct bfa_fcs_lport_ns_s *ns,
			enum vport_ns_event event)
{
	FUNC6(ns->port->fcs, ns->port->port_cfg.pwwn);
	FUNC6(ns->port->fcs, event);

	switch (event) {
	case NSSM_EVENT_RSP_ERROR:
		/*
		 * Start timer for a delayed retry
		 */
		FUNC4(ns, bfa_fcs_lport_ns_sm_plogi_retry);
		ns->port->stats.ns_retries++;
		FUNC5(FUNC0(ns->port),
				    &ns->timer, bfa_fcs_lport_ns_timeout, ns,
				    BFA_FCS_RETRY_TIMEOUT);
		break;

	case NSSM_EVENT_RSP_OK:
		FUNC4(ns, bfa_fcs_lport_ns_sm_sending_rnn_id);
		ns->num_rnnid_retries = 0;
		FUNC1(ns, NULL);
		break;

	case NSSM_EVENT_PORT_OFFLINE:
		FUNC4(ns, bfa_fcs_lport_ns_sm_offline);
		FUNC2(ns->fcxp);
		break;

	default:
		FUNC3(ns->port->fcs, event);
	}
}