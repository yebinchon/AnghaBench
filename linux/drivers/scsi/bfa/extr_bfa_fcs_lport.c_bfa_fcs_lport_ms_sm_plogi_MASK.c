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
struct bfa_fcs_lport_ms_s {TYPE_3__* port; int /*<<< orphan*/  fcxp; int /*<<< orphan*/  timer; } ;
typedef  enum port_ms_event { ____Placeholder_port_ms_event } port_ms_event ;
struct TYPE_5__ {int /*<<< orphan*/  ms_retries; } ;
struct TYPE_4__ {int pwwn; } ;
struct TYPE_6__ {int /*<<< orphan*/  fcs; int /*<<< orphan*/  vport; TYPE_2__ stats; TYPE_1__ port_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  BFA_FCS_RETRY_TIMEOUT ; 
#define  MSSM_EVENT_PORT_OFFLINE 130 
#define  MSSM_EVENT_RSP_ERROR 129 
#define  MSSM_EVENT_RSP_OK 128 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_lport_ms_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_lport_ms_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_fcs_lport_ms_sm_gmal_sending ; 
 int /*<<< orphan*/  bfa_fcs_lport_ms_sm_offline ; 
 int /*<<< orphan*/  bfa_fcs_lport_ms_sm_online ; 
 int /*<<< orphan*/  bfa_fcs_lport_ms_sm_plogi_retry ; 
 int /*<<< orphan*/  bfa_fcs_lport_ms_timeout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_lport_ms_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_fcs_lport_ms_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct bfa_fcs_lport_ms_s *ms,
			enum port_ms_event event)
{
	FUNC7(ms->port->fcs, ms->port->port_cfg.pwwn);
	FUNC7(ms->port->fcs, event);

	switch (event) {
	case MSSM_EVENT_RSP_ERROR:
		/*
		 * Start timer for a delayed retry
		 */
		FUNC5(ms, bfa_fcs_lport_ms_sm_plogi_retry);
		ms->port->stats.ms_retries++;
		FUNC6(FUNC0(ms->port),
				    &ms->timer, bfa_fcs_lport_ms_timeout, ms,
				    BFA_FCS_RETRY_TIMEOUT);
		break;

	case MSSM_EVENT_RSP_OK:
		/*
		 * since plogi is done, now invoke MS related sub-modules
		 */
		FUNC1(ms);

		/*
		 * if this is a Vport, go to online state.
		 */
		if (ms->port->vport) {
			FUNC5(ms, bfa_fcs_lport_ms_sm_online);
			break;
		}

		/*
		 * For a base port we need to get the
		 * switch's IP address.
		 */
		FUNC5(ms, bfa_fcs_lport_ms_sm_gmal_sending);
		FUNC2(ms, NULL);
		break;

	case MSSM_EVENT_PORT_OFFLINE:
		FUNC5(ms, bfa_fcs_lport_ms_sm_offline);
		FUNC3(ms->fcxp);
		break;

	default:
		FUNC4(ms->port->fcs, event);
	}
}