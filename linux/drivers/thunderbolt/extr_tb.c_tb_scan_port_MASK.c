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
struct tb_switch {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct tb_port {TYPE_2__* dual_link_port; struct tb_port* remote; int /*<<< orphan*/ * xdomain; TYPE_3__* sw; scalar_t__ link_nr; TYPE_1__ config; int /*<<< orphan*/  port; } ;
struct tb_cm {int /*<<< orphan*/  hotplug_active; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  tb; } ;
struct TYPE_5__ {struct TYPE_5__* remote; } ;

/* Variables and functions */
 int /*<<< orphan*/  EADDRNOTAVAIL ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC0 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC1 (struct tb_switch*) ; 
 scalar_t__ TB_TYPE_PORT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tb_port*) ; 
 int FUNC4 (struct tb_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_port*) ; 
 scalar_t__ FUNC6 (struct tb_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct tb_port*,char*) ; 
 scalar_t__ FUNC8 (struct tb_port*) ; 
 struct tb_cm* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC13 (struct tb_port*) ; 
 scalar_t__ FUNC14 (struct tb_switch*) ; 
 struct tb_switch* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC17 (struct tb_switch*) ; 
 struct tb_port* FUNC18 (struct tb_switch*) ; 
 scalar_t__ FUNC19 (struct tb_port*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC21(struct tb_port *port)
{
	struct tb_cm *tcm = FUNC9(port->sw->tb);
	struct tb_port *upstream_port;
	struct tb_switch *sw;

	if (FUNC6(port))
		return;

	if (FUNC8(port) && FUNC4(port) == 1 &&
	    !FUNC5(port)) {
		FUNC7(port, "DP adapter HPD set, queuing hotplug\n");
		FUNC10(port->sw->tb, FUNC11(port->sw), port->port,
				 false);
		return;
	}

	if (port->config.type != TB_TYPE_PORT)
		return;
	if (port->dual_link_port && port->link_nr)
		return; /*
			 * Downstream switch is reachable through two ports.
			 * Only scan on the primary port (link_nr == 0).
			 */
	if (FUNC19(port, false) <= 0)
		return;
	if (port->remote) {
		FUNC7(port, "port already has a remote\n");
		return;
	}
	sw = FUNC15(port->sw->tb, &port->sw->dev,
			     FUNC3(port));
	if (FUNC0(sw)) {
		/*
		 * If there is an error accessing the connected switch
		 * it may be connected to another domain. Also we allow
		 * the other domain to be connected to a max depth switch.
		 */
		if (FUNC1(sw) == -EIO || FUNC1(sw) == -EADDRNOTAVAIL)
			FUNC13(port);
		return;
	}

	if (FUNC16(sw)) {
		FUNC17(sw);
		return;
	}

	/*
	 * If there was previously another domain connected remove it
	 * first.
	 */
	if (port->xdomain) {
		FUNC20(port->xdomain);
		port->xdomain = NULL;
	}

	/*
	 * Do not send uevents until we have discovered all existing
	 * tunnels and know which switches were authorized already by
	 * the boot firmware.
	 */
	if (!tcm->hotplug_active)
		FUNC2(&sw->dev, true);

	if (FUNC14(sw)) {
		FUNC17(sw);
		return;
	}

	/* Link the switches using both links if available */
	upstream_port = FUNC18(sw);
	port->remote = upstream_port;
	upstream_port->remote = port;
	if (port->dual_link_port && upstream_port->dual_link_port) {
		port->dual_link_port->remote = upstream_port->dual_link_port;
		upstream_port->dual_link_port->remote = port->dual_link_port;
	}

	FUNC12(sw);
}