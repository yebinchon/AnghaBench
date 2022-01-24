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
struct tb_xdomain {int /*<<< orphan*/  route; TYPE_1__ dev; } ;
struct tb_switch {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * xdomain; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,struct tb_switch*) ; 
 struct tb_switch* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tb_xdomain*) ; 

__attribute__((used)) static void FUNC3(struct tb_xdomain *xd)
{
	struct tb_switch *sw;

	sw = FUNC1(xd->dev.parent);
	FUNC0(xd->route, sw)->xdomain = NULL;
	FUNC2(xd);
}