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
union power_supply_propval {int intval; } ;
struct rt9455_info {TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_ICHRG ; 
 int /*<<< orphan*/  F_IEOC_PERCENTAGE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct rt9455_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  rt9455_ichrg_values ; 
 int /*<<< orphan*/  rt9455_ieoc_percentage_values ; 

__attribute__((used)) static int FUNC3(struct rt9455_info *info,
					   union power_supply_propval *val)
{
	struct device *dev = &info->client->dev;
	int ichrg, ieoc_percentage, ret;

	ret = FUNC2(info, F_ICHRG,
				   rt9455_ichrg_values,
				   FUNC0(rt9455_ichrg_values),
				   &ichrg);
	if (ret) {
		FUNC1(dev, "Failed to read ICHRG value\n");
		return ret;
	}

	ret = FUNC2(info, F_IEOC_PERCENTAGE,
				   rt9455_ieoc_percentage_values,
				   FUNC0(rt9455_ieoc_percentage_values),
				   &ieoc_percentage);
	if (ret) {
		FUNC1(dev, "Failed to read IEOC value\n");
		return ret;
	}

	val->intval = ichrg * ieoc_percentage / 100;

	return 0;
}