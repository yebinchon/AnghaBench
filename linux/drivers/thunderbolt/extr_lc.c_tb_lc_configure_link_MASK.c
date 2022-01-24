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
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  enabled; } ;
struct tb_switch {TYPE_2__ dev; TYPE_1__ config; } ;
struct tb_port {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct tb_port*,int) ; 
 struct tb_port* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct tb_port* FUNC4 (struct tb_switch*) ; 

int FUNC5(struct tb_switch *sw)
{
	struct tb_port *up, *down;
	int ret;

	if (!sw->config.enabled || !FUNC2(sw))
		return 0;

	up = FUNC4(sw);
	down = FUNC1(FUNC2(sw), FUNC3(sw->dev.parent));

	/* Configure parent link toward this switch */
	ret = FUNC0(down, true);
	if (ret)
		return ret;

	/* Configure upstream link from this switch to the parent */
	ret = FUNC0(up, true);
	if (ret)
		FUNC0(down, false);

	return ret;
}