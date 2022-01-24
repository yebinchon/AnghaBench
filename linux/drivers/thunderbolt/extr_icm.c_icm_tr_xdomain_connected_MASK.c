#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u64 ;
struct tb_xdomain {scalar_t__ route; } ;
struct tb_switch {int dummy; } ;
struct tb {int /*<<< orphan*/  root_switch; } ;
struct icm_tr_event_xdomain_connected {int /*<<< orphan*/  remote_uuid; int /*<<< orphan*/  local_uuid; int /*<<< orphan*/  local_route_lo; int /*<<< orphan*/  local_route_hi; } ;
struct icm_pkg_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tb_switch*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC4 (struct tb_xdomain*) ; 
 struct tb_switch* FUNC5 (struct tb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC7 (struct tb*,char*,scalar_t__) ; 
 struct tb_xdomain* FUNC8 (struct tb*,scalar_t__) ; 
 struct tb_xdomain* FUNC9 (struct tb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct tb_xdomain*) ; 
 int /*<<< orphan*/  FUNC11 (struct tb_xdomain*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct tb *tb, const struct icm_pkg_header *hdr)
{
	const struct icm_tr_event_xdomain_connected *pkg =
		(const struct icm_tr_event_xdomain_connected *)hdr;
	struct tb_xdomain *xd;
	struct tb_switch *sw;
	u64 route;

	if (!tb->root_switch)
		return;

	route = FUNC2(pkg->local_route_hi, pkg->local_route_lo);

	xd = FUNC9(tb, &pkg->remote_uuid);
	if (xd) {
		if (xd->route == route) {
			FUNC11(xd, route, 0);
			FUNC10(xd);
			return;
		}

		FUNC4(xd);
		FUNC10(xd);
	}

	/* An existing xdomain with the same address */
	xd = FUNC8(tb, route);
	if (xd) {
		FUNC4(xd);
		FUNC10(xd);
	}

	/*
	 * If the user disconnected a switch during suspend and
	 * connected another host to the same port, remove the switch
	 * first.
	 */
	sw = FUNC5(tb, route);
	if (sw) {
		FUNC3(sw);
		FUNC6(sw);
	}

	sw = FUNC5(tb, FUNC1(route));
	if (!sw) {
		FUNC7(tb, "no switch exists at %llx, ignoring\n", route);
		return;
	}

	FUNC0(sw, route, &pkg->local_uuid, &pkg->remote_uuid, 0, 0);
	FUNC6(sw);
}