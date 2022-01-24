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
struct tcpm_port {int port_type; scalar_t__ pwr_role; scalar_t__ data_role; int /*<<< orphan*/  lock; int /*<<< orphan*/  connected; } ;
typedef  enum typec_port_type { ____Placeholder_typec_port_type } typec_port_type ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_RESET ; 
 scalar_t__ TYPEC_DEVICE ; 
 scalar_t__ TYPEC_HOST ; 
 int TYPEC_PORT_SNK ; 
 int TYPEC_PORT_SRC ; 
 scalar_t__ TYPEC_SINK ; 
 scalar_t__ TYPEC_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tcpm_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcpm_port* FUNC3 (struct typec_capability const*) ; 

__attribute__((used)) static int FUNC4(const struct typec_capability *cap,
			      enum typec_port_type type)
{
	struct tcpm_port *port = FUNC3(cap);

	FUNC0(&port->lock);
	if (type == port->port_type)
		goto port_unlock;

	port->port_type = type;

	if (!port->connected) {
		FUNC2(port, PORT_RESET, 0);
	} else if (type == TYPEC_PORT_SNK) {
		if (!(port->pwr_role == TYPEC_SINK &&
		      port->data_role == TYPEC_DEVICE))
			FUNC2(port, PORT_RESET, 0);
	} else if (type == TYPEC_PORT_SRC) {
		if (!(port->pwr_role == TYPEC_SOURCE &&
		      port->data_role == TYPEC_HOST))
			FUNC2(port, PORT_RESET, 0);
	}

port_unlock:
	FUNC1(&port->lock);
	return 0;
}