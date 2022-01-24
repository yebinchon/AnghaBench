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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_6__ {int /*<<< orphan*/  groups; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; struct device* parent; } ;
struct TYPE_5__ {int upstream_port_number; int depth; int max_port_number; scalar_t__ enabled; int /*<<< orphan*/  route_lo; int /*<<< orphan*/  route_hi; } ;
struct tb_switch {int port; int cap_plug_events; int cap_lc; int authorized; struct tb_switch* ports; TYPE_3__ dev; int /*<<< orphan*/  generation; struct tb_switch* sw; TYPE_1__ config; struct tb* tb; } ;
struct tb {int /*<<< orphan*/  index; int /*<<< orphan*/  ctl; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int ENOMEM ; 
 struct tb_switch* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TB_CFG_SWITCH ; 
 int TB_SWITCH_MAX_DEPTH ; 
 int /*<<< orphan*/  TB_VSE_CAP_LINK_CONTROLLER ; 
 int /*<<< orphan*/  TB_VSE_CAP_PLUG_EVENTS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 struct tb_switch* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tb_switch*) ; 
 struct tb_switch* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  switch_groups ; 
 int /*<<< orphan*/  tb_bus_type ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tb*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct tb*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct tb_switch*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct tb_switch*,char*) ; 
 int FUNC14 (struct tb_switch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct tb_switch*) ; 
 int /*<<< orphan*/  tb_switch_type ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

struct tb_switch *FUNC17(struct tb *tb, struct device *parent,
				  u64 route)
{
	struct tb_switch *sw;
	int upstream_port;
	int i, ret, depth;

	/* Make sure we do not exceed maximum topology limit */
	depth = FUNC12(route);
	if (depth > TB_SWITCH_MAX_DEPTH)
		return FUNC0(-EADDRNOTAVAIL);

	upstream_port = FUNC7(tb->ctl, route);
	if (upstream_port < 0)
		return FUNC0(upstream_port);

	sw = FUNC5(sizeof(*sw), GFP_KERNEL);
	if (!sw)
		return FUNC0(-ENOMEM);

	sw->tb = tb;
	ret = FUNC8(tb->ctl, &sw->config, route, 0, TB_CFG_SWITCH, 0, 5);
	if (ret)
		goto err_free_sw_ports;

	FUNC9(tb, "current switch config:\n");
	FUNC10(tb, &sw->config);

	/* configure switch */
	sw->config.upstream_port_number = upstream_port;
	sw->config.depth = depth;
	sw->config.route_hi = FUNC16(route);
	sw->config.route_lo = FUNC6(route);
	sw->config.enabled = 0;

	/* initialize ports */
	sw->ports = FUNC3(sw->config.max_port_number + 1, sizeof(*sw->ports),
				GFP_KERNEL);
	if (!sw->ports) {
		ret = -ENOMEM;
		goto err_free_sw_ports;
	}

	for (i = 0; i <= sw->config.max_port_number; i++) {
		/* minimum setup for tb_find_cap and tb_drom_read to work */
		sw->ports[i].sw = sw;
		sw->ports[i].port = i;
	}

	sw->generation = FUNC15(sw);

	ret = FUNC14(sw, TB_VSE_CAP_PLUG_EVENTS);
	if (ret < 0) {
		FUNC13(sw, "cannot find TB_VSE_CAP_PLUG_EVENTS aborting\n");
		goto err_free_sw_ports;
	}
	sw->cap_plug_events = ret;

	ret = FUNC14(sw, TB_VSE_CAP_LINK_CONTROLLER);
	if (ret > 0)
		sw->cap_lc = ret;

	/* Root switch is always authorized */
	if (!route)
		sw->authorized = true;

	FUNC2(&sw->dev);
	sw->dev.parent = parent;
	sw->dev.bus = &tb_bus_type;
	sw->dev.type = &tb_switch_type;
	sw->dev.groups = switch_groups;
	FUNC1(&sw->dev, "%u-%llx", tb->index, FUNC11(sw));

	return sw;

err_free_sw_ports:
	FUNC4(sw->ports);
	FUNC4(sw);

	return FUNC0(ret);
}