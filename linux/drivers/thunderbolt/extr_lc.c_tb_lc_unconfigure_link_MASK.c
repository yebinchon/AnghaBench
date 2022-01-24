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
struct tb_switch {TYPE_2__ dev; TYPE_1__ config; scalar_t__ is_unplugged; } ;
struct tb_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tb_port*,int) ; 
 struct tb_port* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct tb_port* FUNC4 (struct tb_switch*) ; 

void FUNC5(struct tb_switch *sw)
{
	struct tb_port *up, *down;

	if (sw->is_unplugged || !sw->config.enabled || !FUNC2(sw))
		return;

	up = FUNC4(sw);
	down = FUNC1(FUNC2(sw), FUNC3(sw->dev.parent));

	FUNC0(up, false);
	FUNC0(down, false);
}