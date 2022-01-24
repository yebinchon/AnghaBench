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
struct tcpm_port {int vbus_present; int state; int explicit_contract; } ;

/* Variables and functions */
 int const SNK_ATTACHED ; 
#define  SNK_DEBOUNCED 142 
#define  SNK_DISCOVERY 141 
 int const SNK_HARD_RESET_SINK_ON ; 
#define  SNK_HARD_RESET_WAIT_VBUS 140 
 int const SNK_READY ; 
#define  SNK_TRANSITION_SINK_VBUS 139 
#define  SNK_TRY 138 
#define  SNK_TRYWAIT 137 
#define  SNK_TRYWAIT_DEBOUNCE 136 
#define  SNK_TRYWAIT_VBUS 135 
#define  SNK_TRY_WAIT_DEBOUNCE 134 
#define  SRC_ATTACHED 133 
#define  SRC_HARD_RESET_VBUS_ON 132 
 int const SRC_STARTUP ; 
 int const SRC_TRY ; 
#define  SRC_TRYWAIT 131 
#define  SRC_TRYWAIT_DEBOUNCE 130 
#define  SRC_TRY_DEBOUNCE 129 
#define  SRC_TRY_WAIT 128 
 int /*<<< orphan*/  FUNC0 (struct tcpm_port*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpm_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcpm_port*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tcpm_port*) ; 

__attribute__((used)) static void FUNC4(struct tcpm_port *port)
{
	FUNC0(port, "VBUS on");
	port->vbus_present = true;
	switch (port->state) {
	case SNK_TRANSITION_SINK_VBUS:
		port->explicit_contract = true;
		FUNC2(port, SNK_READY, 0);
		break;
	case SNK_DISCOVERY:
		FUNC2(port, SNK_DISCOVERY, 0);
		break;

	case SNK_DEBOUNCED:
		FUNC2(port, FUNC3(port) ? SRC_TRY
							: SNK_ATTACHED,
				       0);
		break;
	case SNK_HARD_RESET_WAIT_VBUS:
		FUNC2(port, SNK_HARD_RESET_SINK_ON, 0);
		break;
	case SRC_ATTACHED:
		FUNC2(port, SRC_STARTUP, 0);
		break;
	case SRC_HARD_RESET_VBUS_ON:
		FUNC2(port, SRC_STARTUP, 0);
		break;

	case SNK_TRY:
		/* Do nothing, waiting for timeout */
		break;
	case SRC_TRYWAIT:
		/* Do nothing, Waiting for Rd to be detected */
		break;
	case SRC_TRYWAIT_DEBOUNCE:
		FUNC2(port, SRC_TRYWAIT, 0);
		break;
	case SNK_TRY_WAIT_DEBOUNCE:
		/* Do nothing, waiting for PD_DEBOUNCE to do be done */
		break;
	case SNK_TRYWAIT:
		/* Do nothing, waiting for tCCDebounce */
		break;
	case SNK_TRYWAIT_VBUS:
		if (FUNC1(port))
			FUNC2(port, SNK_ATTACHED, 0);
		break;
	case SNK_TRYWAIT_DEBOUNCE:
		/* Do nothing, waiting for Rp */
		break;
	case SRC_TRY_WAIT:
	case SRC_TRY_DEBOUNCE:
		/* Do nothing, waiting for sink detection */
		break;
	default:
		break;
	}
}