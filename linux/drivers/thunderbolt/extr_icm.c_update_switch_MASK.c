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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {int /*<<< orphan*/  route_lo; int /*<<< orphan*/  route_hi; } ;
struct tb_switch {int boot; int is_unplugged; int /*<<< orphan*/  rpm_complete; void* depth; void* link; void* connection_key; void* connection_id; TYPE_1__ config; } ;
struct TYPE_4__ {int /*<<< orphan*/ * remote; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC3 (struct tb_switch*) ; 
 int /*<<< orphan*/ * FUNC4 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct tb_switch *parent_sw, struct tb_switch *sw,
			  u64 route, u8 connection_id, u8 connection_key,
			  u8 link, u8 depth, bool boot)
{
	/* Disconnect from parent */
	FUNC2(FUNC3(sw), parent_sw)->remote = NULL;
	/* Re-connect via updated port*/
	FUNC2(route, parent_sw)->remote = FUNC4(sw);

	/* Update with the new addressing information */
	sw->config.route_hi = FUNC5(route);
	sw->config.route_lo = FUNC1(route);
	sw->connection_id = connection_id;
	sw->connection_key = connection_key;
	sw->link = link;
	sw->depth = depth;
	sw->boot = boot;

	/* This switch still exists */
	sw->is_unplugged = false;

	/* Runtime resume is now complete */
	FUNC0(&sw->rpm_complete);
}