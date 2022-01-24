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
struct TYPE_2__ {int /*<<< orphan*/  op_curr; int /*<<< orphan*/  out_volt; int /*<<< orphan*/  active; int /*<<< orphan*/  supported; } ;
struct tcpm_port {scalar_t__ state; int pps_status; int pps_pending; int /*<<< orphan*/  swap_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  pps_complete; int /*<<< orphan*/  current_limit; TYPE_1__ pps_data; int /*<<< orphan*/  supply_voltage; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EOPNOTSUPP ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  PD_PPS_CTRL_TIMEOUT ; 
 int /*<<< orphan*/  SNK_NEGOTIATE_CAPABILITIES ; 
 int /*<<< orphan*/  SNK_NEGOTIATE_PPS_CAPABILITIES ; 
 scalar_t__ SNK_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tcpm_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct tcpm_port *port, bool activate)
{
	int ret = 0;

	FUNC1(&port->swap_lock);
	FUNC1(&port->lock);

	if (!port->pps_data.supported) {
		ret = -EOPNOTSUPP;
		goto port_unlock;
	}

	/* Trying to deactivate PPS when already deactivated so just bail */
	if (!port->pps_data.active && !activate)
		goto port_unlock;

	if (port->state != SNK_READY) {
		ret = -EAGAIN;
		goto port_unlock;
	}

	FUNC3(&port->pps_complete);
	port->pps_status = 0;
	port->pps_pending = true;

	/* Trigger PPS request or move back to standard PDO contract */
	if (activate) {
		port->pps_data.out_volt = port->supply_voltage;
		port->pps_data.op_curr = port->current_limit;
		FUNC4(port, SNK_NEGOTIATE_PPS_CAPABILITIES, 0);
	} else {
		FUNC4(port, SNK_NEGOTIATE_CAPABILITIES, 0);
	}
	FUNC2(&port->lock);

	if (!FUNC5(&port->pps_complete,
				FUNC0(PD_PPS_CTRL_TIMEOUT)))
		ret = -ETIMEDOUT;
	else
		ret = port->pps_status;

	goto swap_unlock;

port_unlock:
	FUNC2(&port->lock);
swap_unlock:
	FUNC2(&port->swap_lock);

	return ret;
}