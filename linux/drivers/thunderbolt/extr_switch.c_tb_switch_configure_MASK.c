#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ vendor_id; int enabled; int /*<<< orphan*/  upstream_port_number; } ;
struct tb_switch {TYPE_1__ config; struct tb* tb; } ;
struct tb {int dummy; } ;

/* Variables and functions */
 scalar_t__ PCI_VENDOR_ID_INTEL ; 
 int /*<<< orphan*/  TB_CFG_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (struct tb*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tb_switch*) ; 
 int FUNC2 (struct tb_switch*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_switch*,char*,scalar_t__) ; 
 int FUNC6 (struct tb_switch*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

int FUNC7(struct tb_switch *sw)
{
	struct tb *tb = sw->tb;
	u64 route;
	int ret;

	route = FUNC3(sw);
	FUNC0(tb, "initializing Switch at %#llx (depth: %d, up port: %d)\n",
	       route, FUNC4(route), sw->config.upstream_port_number);

	if (sw->config.vendor_id != PCI_VENDOR_ID_INTEL)
		FUNC5(sw, "unknown switch vendor id %#x\n",
			   sw->config.vendor_id);

	sw->config.enabled = 1;

	/* upload configuration */
	ret = FUNC6(sw, 1 + (u32 *)&sw->config, TB_CFG_SWITCH, 1, 3);
	if (ret)
		return ret;

	ret = FUNC1(sw);
	if (ret)
		return ret;

	return FUNC2(sw, true);
}