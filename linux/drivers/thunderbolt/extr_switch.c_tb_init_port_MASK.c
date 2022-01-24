#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ type; } ;
struct tb_port {scalar_t__ port; int cap_phy; int cap_adap; int /*<<< orphan*/  out_hopids; int /*<<< orphan*/  in_hopids; TYPE_2__ config; TYPE_1__* sw; } ;
struct TYPE_4__ {int /*<<< orphan*/  tb; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  TB_CFG_PORT ; 
 int /*<<< orphan*/  TB_PORT_CAP_ADAP ; 
 int /*<<< orphan*/  TB_PORT_CAP_PHY ; 
 scalar_t__ TB_TYPE_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct tb_port*,char*) ; 
 int FUNC4 (struct tb_port*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct tb_port*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct tb_port *port)
{
	int res;
	int cap;

	res = FUNC5(port, &port->config, TB_CFG_PORT, 0, 8);
	if (res) {
		if (res == -ENODEV) {
			FUNC1(port->sw->tb, " Port %d: not implemented\n",
			       port->port);
			return 0;
		}
		return res;
	}

	/* Port 0 is the switch itself and has no PHY. */
	if (port->config.type == TB_TYPE_PORT && port->port != 0) {
		cap = FUNC4(port, TB_PORT_CAP_PHY);

		if (cap > 0)
			port->cap_phy = cap;
		else
			FUNC3(port, "non switch port without a PHY\n");
	} else if (port->port != 0) {
		cap = FUNC4(port, TB_PORT_CAP_ADAP);
		if (cap > 0)
			port->cap_adap = cap;
	}

	FUNC2(port->sw->tb, &port->config);

	/* Control port does not need HopID allocation */
	if (port->port) {
		FUNC0(&port->in_hopids);
		FUNC0(&port->out_hopids);
	}

	return 0;

}