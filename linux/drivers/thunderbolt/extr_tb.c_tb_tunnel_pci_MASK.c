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
struct tb_tunnel {int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct tb_switch {TYPE_1__ dev; } ;
struct tb_port {int dummy; } ;
struct tb_cm {int /*<<< orphan*/  tunnel_list; } ;
struct tb {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  TB_TYPE_PCIE_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct tb_port* FUNC1 (struct tb_switch*,struct tb_port*) ; 
 struct tb_port* FUNC2 (struct tb_switch*,int /*<<< orphan*/ ) ; 
 struct tb_port* FUNC3 (int /*<<< orphan*/ ,struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC4 (struct tb_port*,char*) ; 
 struct tb_cm* FUNC5 (struct tb*) ; 
 int /*<<< orphan*/  FUNC6 (struct tb_switch*) ; 
 struct tb_switch* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct tb_tunnel*) ; 
 struct tb_tunnel* FUNC9 (struct tb*,struct tb_port*,struct tb_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct tb_tunnel*) ; 

__attribute__((used)) static int FUNC11(struct tb *tb, struct tb_switch *sw)
{
	struct tb_port *up, *down, *port;
	struct tb_cm *tcm = FUNC5(tb);
	struct tb_switch *parent_sw;
	struct tb_tunnel *tunnel;

	up = FUNC2(sw, TB_TYPE_PCIE_UP);
	if (!up)
		return 0;

	/*
	 * Look up available down port. Since we are chaining it should
	 * be found right above this switch.
	 */
	parent_sw = FUNC7(sw->dev.parent);
	port = FUNC3(FUNC6(sw), parent_sw);
	down = FUNC1(parent_sw, port);
	if (!down)
		return 0;

	tunnel = FUNC9(tb, up, down);
	if (!tunnel)
		return -ENOMEM;

	if (FUNC8(tunnel)) {
		FUNC4(up,
			     "PCIe tunnel activation failed, aborting\n");
		FUNC10(tunnel);
		return -EIO;
	}

	FUNC0(&tunnel->list, &tcm->tunnel_list);
	return 0;
}