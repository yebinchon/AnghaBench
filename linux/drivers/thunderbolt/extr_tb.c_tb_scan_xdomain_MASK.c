#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct tb_xdomain {int dummy; } ;
struct tb_switch {int /*<<< orphan*/  dev; struct tb* tb; } ;
struct tb_port {struct tb_switch* sw; } ;
struct tb {TYPE_1__* root_switch; } ;
struct TYPE_4__ {struct tb_xdomain* xdomain; } ;
struct TYPE_3__ {int /*<<< orphan*/  uuid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tb_port*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC2 (struct tb_xdomain*) ; 
 struct tb_xdomain* FUNC3 (struct tb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tb_xdomain* FUNC4 (struct tb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_xdomain*) ; 

__attribute__((used)) static void FUNC6(struct tb_port *port)
{
	struct tb_switch *sw = port->sw;
	struct tb *tb = sw->tb;
	struct tb_xdomain *xd;
	u64 route;

	route = FUNC0(port);
	xd = FUNC4(tb, route);
	if (xd) {
		FUNC5(xd);
		return;
	}

	xd = FUNC3(tb, &sw->dev, route, tb->root_switch->uuid,
			      NULL);
	if (xd) {
		FUNC1(route, sw)->xdomain = xd;
		FUNC2(xd);
	}
}