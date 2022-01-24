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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct tb_xdomain {scalar_t__ depth; int /*<<< orphan*/  route; } ;
struct tb_switch {int dummy; } ;
struct tb {int dummy; } ;
struct icm_pkg_header {int dummy; } ;
struct icm_fr_event_xdomain_connected {scalar_t__ link_info; int /*<<< orphan*/  remote_uuid; int /*<<< orphan*/  local_uuid; int /*<<< orphan*/  local_route_lo; int /*<<< orphan*/  local_route_hi; } ;

/* Variables and functions */
 scalar_t__ ICM_LINK_INFO_DEPTH_MASK ; 
 scalar_t__ ICM_LINK_INFO_DEPTH_SHIFT ; 
 scalar_t__ ICM_LINK_INFO_LINK_MASK ; 
 scalar_t__ ICM_MAX_LINK ; 
 scalar_t__ TB_SWITCH_MAX_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (struct tb_switch*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_xdomain*) ; 
 struct tb_switch* FUNC6 (struct tb*,scalar_t__,scalar_t__) ; 
 struct tb_switch* FUNC7 (struct tb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC9 (struct tb*,char*,scalar_t__,scalar_t__) ; 
 struct tb_xdomain* FUNC10 (struct tb*,scalar_t__,scalar_t__) ; 
 struct tb_xdomain* FUNC11 (struct tb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct tb_xdomain*) ; 
 int /*<<< orphan*/  FUNC13 (struct tb_xdomain*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC14(struct tb *tb, const struct icm_pkg_header *hdr)
{
	const struct icm_fr_event_xdomain_connected *pkg =
		(const struct icm_fr_event_xdomain_connected *)hdr;
	struct tb_xdomain *xd;
	struct tb_switch *sw;
	u8 link, depth;
	u64 route;

	link = pkg->link_info & ICM_LINK_INFO_LINK_MASK;
	depth = (pkg->link_info & ICM_LINK_INFO_DEPTH_MASK) >>
		ICM_LINK_INFO_DEPTH_SHIFT;

	if (link > ICM_MAX_LINK || depth > TB_SWITCH_MAX_DEPTH) {
		FUNC9(tb, "invalid topology %u.%u, ignoring\n", link, depth);
		return;
	}

	route = FUNC2(pkg->local_route_hi, pkg->local_route_lo);

	xd = FUNC11(tb, &pkg->remote_uuid);
	if (xd) {
		u8 xd_phy_port, phy_port;

		xd_phy_port = FUNC3(xd->route, xd->depth);
		phy_port = FUNC3(route, depth);

		if (xd->depth == depth && xd_phy_port == phy_port) {
			FUNC13(xd, route, link);
			FUNC12(xd);
			return;
		}

		/*
		 * If we find an existing XDomain connection remove it
		 * now. We need to go through login handshake and
		 * everything anyway to be able to re-establish the
		 * connection.
		 */
		FUNC5(xd);
		FUNC12(xd);
	}

	/*
	 * Look if there already exists an XDomain in the same place
	 * than the new one and in that case remove it because it is
	 * most likely another host that got disconnected.
	 */
	xd = FUNC10(tb, link, depth);
	if (!xd) {
		u8 dual_link;

		dual_link = FUNC1(link);
		if (dual_link)
			xd = FUNC10(tb, dual_link,
							   depth);
	}
	if (xd) {
		FUNC5(xd);
		FUNC12(xd);
	}

	/*
	 * If the user disconnected a switch during suspend and
	 * connected another host to the same port, remove the switch
	 * first.
	 */
	sw = FUNC7(tb, route);
	if (sw) {
		FUNC4(sw);
		FUNC8(sw);
	}

	sw = FUNC6(tb, link, depth);
	if (!sw) {
		FUNC9(tb, "no switch exists at %u.%u, ignoring\n", link,
			depth);
		return;
	}

	FUNC0(sw, route, &pkg->local_uuid, &pkg->remote_uuid, link,
		    depth);
	FUNC8(sw);
}