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
struct typec_capability {int dummy; } ;
struct tcpm_port {scalar_t__ port_type; scalar_t__ state; int data_role; scalar_t__ try_role; scalar_t__ pwr_role; int non_pd_role_swap; int swap_status; int swap_pending; int /*<<< orphan*/  swap_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  swap_complete; int /*<<< orphan*/  pd_capable; } ;
typedef  enum typec_data_role { ____Placeholder_typec_data_role } typec_data_role ;

/* Variables and functions */
 int /*<<< orphan*/  DR_SWAP_SEND ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  PD_ROLE_SWAP_TIMEOUT ; 
 int /*<<< orphan*/  PORT_RESET ; 
 scalar_t__ SNK_READY ; 
 scalar_t__ SRC_READY ; 
 scalar_t__ TYPEC_NO_PREFERRED_ROLE ; 
 scalar_t__ TYPEC_PORT_DRP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tcpm_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcpm_port* FUNC5 (struct typec_capability const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(const struct typec_capability *cap,
		       enum typec_data_role data)
{
	struct tcpm_port *port = FUNC5(cap);
	int ret;

	FUNC1(&port->swap_lock);
	FUNC1(&port->lock);

	if (port->port_type != TYPEC_PORT_DRP) {
		ret = -EINVAL;
		goto port_unlock;
	}
	if (port->state != SRC_READY && port->state != SNK_READY) {
		ret = -EAGAIN;
		goto port_unlock;
	}

	if (port->data_role == data) {
		ret = 0;
		goto port_unlock;
	}

	/*
	 * XXX
	 * 6.3.9: If an alternate mode is active, a request to swap
	 * alternate modes shall trigger a port reset.
	 * Reject data role swap request in this case.
	 */

	if (!port->pd_capable) {
		/*
		 * If the partner is not PD capable, reset the port to
		 * trigger a role change. This can only work if a preferred
		 * role is configured, and if it matches the requested role.
		 */
		if (port->try_role == TYPEC_NO_PREFERRED_ROLE ||
		    port->try_role == port->pwr_role) {
			ret = -EINVAL;
			goto port_unlock;
		}
		port->non_pd_role_swap = true;
		FUNC4(port, PORT_RESET, 0);
	} else {
		FUNC4(port, DR_SWAP_SEND, 0);
	}

	port->swap_status = 0;
	port->swap_pending = true;
	FUNC3(&port->swap_complete);
	FUNC2(&port->lock);

	if (!FUNC6(&port->swap_complete,
				FUNC0(PD_ROLE_SWAP_TIMEOUT)))
		ret = -ETIMEDOUT;
	else
		ret = port->swap_status;

	port->non_pd_role_swap = false;
	goto swap_unlock;

port_unlock:
	FUNC2(&port->lock);
swap_unlock:
	FUNC2(&port->swap_lock);
	return ret;
}