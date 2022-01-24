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
struct of_regulator_match {struct device_node* of_node; int /*<<< orphan*/  init_data; } ;
struct device_node {int dummy; } ;
struct device {TYPE_1__* parent; } ;
struct as3711_regulator_pdata {int /*<<< orphan*/ * init_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 struct of_regulator_match* as3711_regulator_matches ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct as3711_regulator_pdata* FUNC1 (struct device*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int FUNC4 (TYPE_1__*,struct device_node*,struct of_regulator_match*,int const) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
				struct device_node **of_node, const int count)
{
	struct as3711_regulator_pdata *pdata = FUNC1(dev);
	struct device_node *regulators =
		FUNC2(dev->parent->of_node, "regulators");
	struct of_regulator_match *match;
	int ret, i;

	if (!regulators) {
		FUNC0(dev, "regulator node not found\n");
		return -ENODEV;
	}

	ret = FUNC4(dev->parent, regulators,
				 as3711_regulator_matches, count);
	FUNC3(regulators);
	if (ret < 0) {
		FUNC0(dev, "Error parsing regulator init data: %d\n", ret);
		return ret;
	}

	for (i = 0, match = as3711_regulator_matches; i < count; i++, match++)
		if (match->of_node) {
			pdata->init_data[i] = match->init_data;
			of_node[i] = match->of_node;
		}

	return 0;
}