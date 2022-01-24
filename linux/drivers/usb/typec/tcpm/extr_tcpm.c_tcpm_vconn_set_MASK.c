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
struct tcpm_port {scalar_t__ state; int vconn_role; int swap_status; int swap_pending; int /*<<< orphan*/  swap_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  swap_complete; } ;
typedef  enum typec_role { ____Placeholder_typec_role } typec_role ;

/* Variables and functions */
 int EAGAIN ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  PD_ROLE_SWAP_TIMEOUT ; 
 scalar_t__ SNK_READY ; 
 scalar_t__ SRC_READY ; 
 int /*<<< orphan*/  VCONN_SWAP_SEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tcpm_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcpm_port* FUNC5 (struct typec_capability const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(const struct typec_capability *cap,
			  enum typec_role role)
{
	struct tcpm_port *port = FUNC5(cap);
	int ret;

	FUNC1(&port->swap_lock);
	FUNC1(&port->lock);

	if (port->state != SRC_READY && port->state != SNK_READY) {
		ret = -EAGAIN;
		goto port_unlock;
	}

	if (role == port->vconn_role) {
		ret = 0;
		goto port_unlock;
	}

	port->swap_status = 0;
	port->swap_pending = true;
	FUNC3(&port->swap_complete);
	FUNC4(port, VCONN_SWAP_SEND, 0);
	FUNC2(&port->lock);

	if (!FUNC6(&port->swap_complete,
				FUNC0(PD_ROLE_SWAP_TIMEOUT)))
		ret = -ETIMEDOUT;
	else
		ret = port->swap_status;

	goto swap_unlock;

port_unlock:
	FUNC2(&port->lock);
swap_unlock:
	FUNC2(&port->swap_lock);
	return ret;
}