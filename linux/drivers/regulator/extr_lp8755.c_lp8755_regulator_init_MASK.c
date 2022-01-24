#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct regulator_config {int /*<<< orphan*/  of_node; int /*<<< orphan*/  init_data; struct lp8755_chip* driver_data; TYPE_2__* dev; int /*<<< orphan*/  regmap; } ;
struct lp8755_platform_data {int /*<<< orphan*/ * buck_data; } ;
struct lp8755_chip {size_t mphase; TYPE_2__* dev; int /*<<< orphan*/ ** rdev; int /*<<< orphan*/  regmap; struct lp8755_platform_data* pdata; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_4__ {int nreg; int* buck_num; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,struct regulator_config*) ; 
 int /*<<< orphan*/ * lp8755_regulators ; 
 TYPE_1__* mphase_buck ; 

__attribute__((used)) static int FUNC4(struct lp8755_chip *pchip)
{
	int ret, icnt, buck_num;
	struct lp8755_platform_data *pdata = pchip->pdata;
	struct regulator_config rconfig = { };

	rconfig.regmap = pchip->regmap;
	rconfig.dev = pchip->dev;
	rconfig.driver_data = pchip;

	for (icnt = 0; icnt < mphase_buck[pchip->mphase].nreg; icnt++) {
		buck_num = mphase_buck[pchip->mphase].buck_num[icnt];
		rconfig.init_data = pdata->buck_data[buck_num];
		rconfig.of_node = pchip->dev->of_node;
		pchip->rdev[buck_num] =
		    FUNC3(pchip->dev,
				    &lp8755_regulators[buck_num], &rconfig);
		if (FUNC0(pchip->rdev[buck_num])) {
			ret = FUNC1(pchip->rdev[buck_num]);
			pchip->rdev[buck_num] = NULL;
			FUNC2(pchip->dev, "regulator init failed: buck %d\n",
				buck_num);
			return ret;
		}
	}

	return 0;
}