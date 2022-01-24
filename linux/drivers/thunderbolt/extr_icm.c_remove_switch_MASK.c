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
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct tb_switch {TYPE_1__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * remote; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC1 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC2 (struct tb_switch*) ; 
 struct tb_switch* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tb_switch *sw)
{
	struct tb_switch *parent_sw;

	parent_sw = FUNC3(sw->dev.parent);
	FUNC0(FUNC1(sw), parent_sw)->remote = NULL;
	FUNC2(sw);
}