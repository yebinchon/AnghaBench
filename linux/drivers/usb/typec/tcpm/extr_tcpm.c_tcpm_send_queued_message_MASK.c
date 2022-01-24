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
struct tcpm_port {scalar_t__ queued_message; scalar_t__ delayed_state; scalar_t__ delayed_runtime; int /*<<< orphan*/  state_machine; int /*<<< orphan*/  wq; } ;
typedef  enum pd_msg_request { ____Placeholder_pd_msg_request } pd_msg_request ;

/* Variables and functions */
 scalar_t__ INVALID_STATE ; 
 int /*<<< orphan*/  PD_CTRL_NOT_SUPP ; 
 int /*<<< orphan*/  PD_CTRL_REJECT ; 
 int /*<<< orphan*/  PD_CTRL_WAIT ; 
#define  PD_MSG_CTRL_NOT_SUPP 132 
#define  PD_MSG_CTRL_REJECT 131 
#define  PD_MSG_CTRL_WAIT 130 
#define  PD_MSG_DATA_SINK_CAP 129 
#define  PD_MSG_DATA_SOURCE_CAP 128 
 scalar_t__ PD_MSG_NONE ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpm_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tcpm_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcpm_port*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static bool FUNC5(struct tcpm_port *port)
{
	enum pd_msg_request queued_message;

	do {
		queued_message = port->queued_message;
		port->queued_message = PD_MSG_NONE;

		switch (queued_message) {
		case PD_MSG_CTRL_WAIT:
			FUNC1(port, PD_CTRL_WAIT);
			break;
		case PD_MSG_CTRL_REJECT:
			FUNC1(port, PD_CTRL_REJECT);
			break;
		case PD_MSG_CTRL_NOT_SUPP:
			FUNC1(port, PD_CTRL_NOT_SUPP);
			break;
		case PD_MSG_DATA_SINK_CAP:
			FUNC2(port);
			break;
		case PD_MSG_DATA_SOURCE_CAP:
			FUNC3(port);
			break;
		default:
			break;
		}
	} while (port->queued_message != PD_MSG_NONE);

	if (port->delayed_state != INVALID_STATE) {
		if (FUNC4(port->delayed_runtime)) {
			FUNC0(port->wq, &port->state_machine,
					 port->delayed_runtime - jiffies);
			return true;
		}
		port->delayed_state = INVALID_STATE;
	}
	return false;
}