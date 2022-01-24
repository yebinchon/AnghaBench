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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_VOREG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct rt9455_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  rt9455_voreg_values ; 

__attribute__((used)) static int FUNC3(struct rt9455_info *info,
				      union power_supply_propval *val)
{
	int voltage;
	int ret;

	ret = FUNC2(info, F_VOREG,
				   rt9455_voreg_values,
				   FUNC0(rt9455_voreg_values),
				   &voltage);
	if (ret) {
		FUNC1(&info->client->dev, "Failed to read VOREG value\n");
		return ret;
	}

	val->intval = voltage;

	return 0;
}