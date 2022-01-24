#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tb_tunnel {int /*<<< orphan*/  list; TYPE_3__* src_port; TYPE_2__* dst_port; } ;
struct TYPE_9__ {int max_port_number; } ;
struct tb_switch {int boot; struct tb_port* ports; TYPE_4__ config; struct tb* tb; } ;
struct TYPE_6__ {int type; } ;
struct tb_port {TYPE_5__* remote; TYPE_1__ config; } ;
struct tb_cm {int /*<<< orphan*/  tunnel_list; } ;
struct tb {int dummy; } ;
struct TYPE_10__ {struct tb_switch* sw; } ;
struct TYPE_8__ {struct tb_switch* sw; } ;
struct TYPE_7__ {struct tb_switch* sw; } ;

/* Variables and functions */
#define  TB_TYPE_DP_HDMI_IN 129 
#define  TB_TYPE_PCIE_DOWN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct tb_port*) ; 
 struct tb_cm* FUNC2 (struct tb*) ; 
 struct tb_switch* FUNC3 (struct tb_switch*) ; 
 struct tb_tunnel* FUNC4 (struct tb*,struct tb_port*) ; 
 struct tb_tunnel* FUNC5 (struct tb*,struct tb_port*) ; 
 scalar_t__ FUNC6 (struct tb_tunnel*) ; 

__attribute__((used)) static void FUNC7(struct tb_switch *sw)
{
	struct tb *tb = sw->tb;
	struct tb_cm *tcm = FUNC2(tb);
	struct tb_port *port;
	int i;

	for (i = 1; i <= sw->config.max_port_number; i++) {
		struct tb_tunnel *tunnel = NULL;

		port = &sw->ports[i];
		switch (port->config.type) {
		case TB_TYPE_DP_HDMI_IN:
			tunnel = FUNC4(tb, port);
			break;

		case TB_TYPE_PCIE_DOWN:
			tunnel = FUNC5(tb, port);
			break;

		default:
			break;
		}

		if (!tunnel)
			continue;

		if (FUNC6(tunnel)) {
			struct tb_switch *parent = tunnel->dst_port->sw;

			while (parent != tunnel->src_port->sw) {
				parent->boot = true;
				parent = FUNC3(parent);
			}
		}

		FUNC0(&tunnel->list, &tcm->tunnel_list);
	}

	for (i = 1; i <= sw->config.max_port_number; i++) {
		if (FUNC1(&sw->ports[i]))
			FUNC7(sw->ports[i].remote->sw);
	}
}