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
typedef  int u32 ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int /*<<< orphan*/  LTQ_XRX_RCU_RST_STAT ; 
 int LTQ_XRX_RCU_RST_STAT_WDT ; 
 int FUNC1 (struct regmap*) ; 
 int WDIOF_CARDRESET ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 struct regmap* FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct regmap *rcu_regmap;
	u32 val;
	int err;

	rcu_regmap = FUNC3(dev->of_node, "regmap");
	if (FUNC0(rcu_regmap))
		return FUNC1(rcu_regmap);

	err = FUNC2(rcu_regmap, LTQ_XRX_RCU_RST_STAT, &val);
	if (err)
		return err;

	if (val & LTQ_XRX_RCU_RST_STAT_WDT)
		return WDIOF_CARDRESET;

	return 0;
}