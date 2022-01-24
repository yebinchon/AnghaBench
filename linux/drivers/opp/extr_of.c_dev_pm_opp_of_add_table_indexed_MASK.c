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
struct opp_table {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct device*,struct opp_table*) ; 
 struct opp_table* FUNC1 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct opp_table*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

int FUNC4(struct device *dev, int index)
{
	struct opp_table *opp_table;
	int ret, count;

	if (index) {
		/*
		 * If only one phandle is present, then the same OPP table
		 * applies for all index requests.
		 */
		count = FUNC3(dev->of_node,
						   "operating-points-v2", NULL);
		if (count == 1)
			index = 0;
	}

	opp_table = FUNC1(dev, index);
	if (!opp_table)
		return -ENOMEM;

	ret = FUNC0(dev, opp_table);
	if (ret)
		FUNC2(opp_table);

	return ret;
}