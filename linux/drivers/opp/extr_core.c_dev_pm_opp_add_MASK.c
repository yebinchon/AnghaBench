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
struct opp_table {int regulator_count; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct opp_table*,struct device*,unsigned long,unsigned long,int) ; 
 struct opp_table* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct opp_table*) ; 

int FUNC3(struct device *dev, unsigned long freq, unsigned long u_volt)
{
	struct opp_table *opp_table;
	int ret;

	opp_table = FUNC1(dev);
	if (!opp_table)
		return -ENOMEM;

	/* Fix regulator count for dynamic OPPs */
	opp_table->regulator_count = 1;

	ret = FUNC0(opp_table, dev, freq, u_volt, true);
	if (ret)
		FUNC2(opp_table);

	return ret;
}