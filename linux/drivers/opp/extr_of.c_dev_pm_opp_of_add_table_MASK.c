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
struct opp_table {scalar_t__ np; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct device*,struct opp_table*) ; 
 int FUNC1 (struct device*,struct opp_table*) ; 
 struct opp_table* FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct opp_table*) ; 

int FUNC4(struct device *dev)
{
	struct opp_table *opp_table;
	int ret;

	opp_table = FUNC2(dev, 0);
	if (!opp_table)
		return -ENOMEM;

	/*
	 * OPPs have two version of bindings now. Also try the old (v1)
	 * bindings for backward compatibility with older dtbs.
	 */
	if (opp_table->np)
		ret = FUNC1(dev, opp_table);
	else
		ret = FUNC0(dev, opp_table);

	if (ret)
		FUNC3(opp_table);

	return ret;
}