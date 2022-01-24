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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_5__ {int /*<<< orphan*/  groups; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; struct device* parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  route_lo; int /*<<< orphan*/  route_hi; int /*<<< orphan*/  depth; } ;
struct tb_switch {int safe_mode; TYPE_2__ dev; TYPE_1__ config; struct tb* tb; } ;
struct tb {int /*<<< orphan*/  index; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct tb_switch* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 struct tb_switch* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  switch_groups ; 
 int /*<<< orphan*/  tb_bus_type ; 
 int /*<<< orphan*/  FUNC5 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tb_switch_type ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

struct tb_switch *
FUNC8(struct tb *tb, struct device *parent, u64 route)
{
	struct tb_switch *sw;

	sw = FUNC3(sizeof(*sw), GFP_KERNEL);
	if (!sw)
		return FUNC0(-ENOMEM);

	sw->tb = tb;
	sw->config.depth = FUNC6(route);
	sw->config.route_hi = FUNC7(route);
	sw->config.route_lo = FUNC4(route);
	sw->safe_mode = true;

	FUNC2(&sw->dev);
	sw->dev.parent = parent;
	sw->dev.bus = &tb_bus_type;
	sw->dev.type = &tb_switch_type;
	sw->dev.groups = switch_groups;
	FUNC1(&sw->dev, "%u-%llx", tb->index, FUNC5(sw));

	return sw;
}