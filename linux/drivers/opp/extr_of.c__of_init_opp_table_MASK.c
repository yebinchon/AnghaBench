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
typedef  int /*<<< orphan*/  u32 ;
struct opp_table {int is_genpd; struct device_node* np; int /*<<< orphan*/  shared_opp; int /*<<< orphan*/  voltage_tolerance_v1; int /*<<< orphan*/  clock_latency_ns_max; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPP_TABLE_ACCESS_EXCLUSIVE ; 
 int /*<<< orphan*/  OPP_TABLE_ACCESS_SHARED ; 
 struct device_node* FUNC0 (struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct opp_table*,struct device*,struct device_node*) ; 
 scalar_t__ FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 scalar_t__ FUNC5 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

void FUNC7(struct opp_table *opp_table, struct device *dev,
			int index)
{
	struct device_node *np, *opp_np;
	u32 val;

	/*
	 * Only required for backward compatibility with v1 bindings, but isn't
	 * harmful for other cases. And so we do it unconditionally.
	 */
	np = FUNC3(dev->of_node);
	if (!np)
		return;

	if (!FUNC6(np, "clock-latency", &val))
		opp_table->clock_latency_ns_max = val;
	FUNC6(np, "voltage-tolerance",
			     &opp_table->voltage_tolerance_v1);

	if (FUNC2(np, "#power-domain-cells", NULL))
		opp_table->is_genpd = true;

	/* Get OPP table node */
	opp_np = FUNC0(np, index);
	FUNC4(np);

	if (!opp_np)
		return;

	if (FUNC5(opp_np, "opp-shared"))
		opp_table->shared_opp = OPP_TABLE_ACCESS_SHARED;
	else
		opp_table->shared_opp = OPP_TABLE_ACCESS_EXCLUSIVE;

	opp_table->np = opp_np;

	FUNC1(opp_table, dev, opp_np);
	FUNC4(opp_np);
}