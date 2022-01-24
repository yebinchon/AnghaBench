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
typedef  int /*<<< orphan*/  u64 ;
struct tb_switch {int dummy; } ;
struct tb {int dummy; } ;
struct icm_tr_event_device_disconnected {int /*<<< orphan*/  route_lo; int /*<<< orphan*/  route_hi; } ;
struct icm_pkg_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tb_switch*) ; 
 struct tb_switch* FUNC2 (struct tb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC4 (struct tb*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct tb *tb, const struct icm_pkg_header *hdr)
{
	const struct icm_tr_event_device_disconnected *pkg =
		(const struct icm_tr_event_device_disconnected *)hdr;
	struct tb_switch *sw;
	u64 route;

	route = FUNC0(pkg->route_hi, pkg->route_lo);

	sw = FUNC2(tb, route);
	if (!sw) {
		FUNC4(tb, "no switch exists at %llx, ignoring\n", route);
		return;
	}

	FUNC1(sw);
	FUNC3(sw);
}