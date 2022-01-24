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
struct tb_port {int /*<<< orphan*/  cap_phy; } ;

/* Variables and functions */
 int EINVAL ; 
 int TB_PORT_DISABLED ; 
 int TB_PORT_UNPLUGGED ; 
 int TB_PORT_UP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct tb_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct tb_port*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tb_port*,char*,...) ; 
 int FUNC4 (struct tb_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_port*,char*) ; 

int FUNC6(struct tb_port *port, bool wait_if_unplugged)
{
	int retries = 10;
	int state;
	if (!port->cap_phy) {
		FUNC2(port, "does not have PHY\n");
		return -EINVAL;
	}
	if (FUNC1(port)) {
		FUNC2(port, "is the upstream port\n");
		return -EINVAL;
	}

	while (retries--) {
		state = FUNC4(port);
		if (state < 0)
			return state;
		if (state == TB_PORT_DISABLED) {
			FUNC3(port, "is disabled (state: 0)\n");
			return 0;
		}
		if (state == TB_PORT_UNPLUGGED) {
			if (wait_if_unplugged) {
				/* used during resume */
				FUNC3(port,
					    "is unplugged (state: 7), retrying...\n");
				FUNC0(100);
				continue;
			}
			FUNC3(port, "is unplugged (state: 7)\n");
			return 0;
		}
		if (state == TB_PORT_UP) {
			FUNC3(port, "is connected, link is up (state: 2)\n");
			return 1;
		}

		/*
		 * After plug-in the state is TB_PORT_CONNECTING. Give it some
		 * time.
		 */
		FUNC3(port,
			    "is connected, link is not up (state: %d), retrying...\n",
			    state);
		FUNC0(100);
	}
	FUNC5(port,
		     "failed to reach state TB_PORT_UP. Ignoring port...\n");
	return 0;
}