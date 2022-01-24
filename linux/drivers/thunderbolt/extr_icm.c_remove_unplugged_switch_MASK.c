#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct tb_switch {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (TYPE_1__*,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tb_bus_type ; 
 int /*<<< orphan*/  FUNC5 (struct tb_switch*) ; 

__attribute__((used)) static void FUNC6(struct tb_switch *sw)
{
	FUNC2(sw->dev.parent);

	/*
	 * Signal this and switches below for rpm_complete because
	 * tb_switch_remove() calls pm_runtime_get_sync() that then waits
	 * for it.
	 */
	FUNC1(&sw->dev, NULL);
	FUNC0(&tb_bus_type, &sw->dev, NULL, complete_rpm);
	FUNC5(sw);

	FUNC3(sw->dev.parent);
	FUNC4(sw->dev.parent);
}