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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
struct tb_xdomain {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct tb_switch {int rpm; TYPE_2__ dev; int /*<<< orphan*/  authorized; } ;
struct tb {int dummy; } ;
struct TYPE_3__ {int flags; scalar_t__ packet_id; } ;
struct icm_tr_event_device_connected {int link_info; int /*<<< orphan*/  connection_id; scalar_t__ ep_name; int /*<<< orphan*/  ep_uuid; TYPE_1__ hdr; int /*<<< orphan*/  route_lo; int /*<<< orphan*/  route_hi; } ;
struct icm_pkg_header {int dummy; } ;
typedef  enum tb_security_level { ____Placeholder_tb_security_level } tb_security_level ;

/* Variables and functions */
 int ICM_FLAGS_SLEVEL_MASK ; 
 int ICM_FLAGS_SLEVEL_SHIFT ; 
 int ICM_LINK_INFO_APPROVED ; 
 int ICM_LINK_INFO_BOOT ; 
 int ICM_LINK_INFO_REJECTED ; 
 int /*<<< orphan*/  FUNC0 (struct tb_switch*) ; 
 struct tb_switch* FUNC1 (struct tb_switch*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tb*) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC6 (struct tb_xdomain*) ; 
 int /*<<< orphan*/  FUNC7 (struct tb*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct tb*,char*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct tb_switch*) ; 
 struct tb_switch* FUNC10 (struct tb*,scalar_t__) ; 
 struct tb_switch* FUNC11 (struct tb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct tb_switch*) ; 
 struct tb_switch* FUNC13 (int /*<<< orphan*/ ) ; 
 struct tb_xdomain* FUNC14 (struct tb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct tb_xdomain*) ; 
 int /*<<< orphan*/  FUNC16 (struct tb_switch*,struct tb_switch*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC17(struct tb *tb, const struct icm_pkg_header *hdr,
			  bool force_rtd3)
{
	const struct icm_tr_event_device_connected *pkg =
		(const struct icm_tr_event_device_connected *)hdr;
	enum tb_security_level security_level;
	struct tb_switch *sw, *parent_sw;
	struct tb_xdomain *xd;
	bool authorized, boot;
	u64 route;

	FUNC4(tb);

	/*
	 * Currently we don't use the QoS information coming with the
	 * device connected message so simply just ignore that extra
	 * packet for now.
	 */
	if (pkg->hdr.packet_id)
		return;

	route = FUNC3(pkg->route_hi, pkg->route_lo);
	authorized = pkg->link_info & ICM_LINK_INFO_APPROVED;
	security_level = (pkg->hdr.flags & ICM_FLAGS_SLEVEL_MASK) >>
			 ICM_FLAGS_SLEVEL_SHIFT;
	boot = pkg->link_info & ICM_LINK_INFO_BOOT;

	if (pkg->link_info & ICM_LINK_INFO_REJECTED) {
		FUNC8(tb, "switch at %llx was rejected by ICM firmware because topology limit exceeded\n",
			route);
		return;
	}

	sw = FUNC11(tb, &pkg->ep_uuid);
	if (sw) {
		/* Update the switch if it is still in the same place */
		if (FUNC9(sw) == route && !!sw->authorized == authorized) {
			parent_sw = FUNC13(sw->dev.parent);
			FUNC16(parent_sw, sw, route, pkg->connection_id,
				      0, 0, 0, boot);
			FUNC12(sw);
			return;
		}

		FUNC5(sw);
		FUNC12(sw);
	}

	/* Another switch with the same address */
	sw = FUNC10(tb, route);
	if (sw) {
		FUNC5(sw);
		FUNC12(sw);
	}

	/* XDomain connection with the same address */
	xd = FUNC14(tb, route);
	if (xd) {
		FUNC6(xd);
		FUNC15(xd);
	}

	parent_sw = FUNC10(tb, FUNC2(route));
	if (!parent_sw) {
		FUNC7(tb, "failed to find parent switch for %llx\n", route);
		return;
	}

	sw = FUNC1(parent_sw, route, &pkg->ep_uuid, (const u8 *)pkg->ep_name,
			sizeof(pkg->ep_name), pkg->connection_id, 0, 0, 0,
			security_level, authorized, boot);
	if (!FUNC0(sw) && force_rtd3)
		sw->rpm = true;

	FUNC12(parent_sw);
}