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
struct rk808_regulator_data {int /*<<< orphan*/ * dvs_gpio; } ;
struct regmap {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int RK808_DVS1_POL ; 
 int RK808_DVS2_POL ; 
 int /*<<< orphan*/  RK808_IO_POL_REG ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 int FUNC9 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC10(struct device *dev,
				   struct device *client_dev,
				   struct regmap *map,
				   struct rk808_regulator_data *pdata)
{
	struct device_node *np;
	int tmp, ret = 0, i;

	np = FUNC7(client_dev->of_node, "regulators");
	if (!np)
		return -ENXIO;

	for (i = 0; i < FUNC0(pdata->dvs_gpio); i++) {
		pdata->dvs_gpio[i] =
			FUNC5(client_dev, "dvs", i,
						      GPIOD_OUT_LOW);
		if (FUNC1(pdata->dvs_gpio[i])) {
			ret = FUNC2(pdata->dvs_gpio[i]);
			FUNC3(dev, "failed to get dvs%d gpio (%d)\n", i, ret);
			goto dt_parse_end;
		}

		if (!pdata->dvs_gpio[i]) {
			FUNC4(dev, "there is no dvs%d gpio\n", i);
			continue;
		}

		tmp = i ? RK808_DVS2_POL : RK808_DVS1_POL;
		ret = FUNC9(map, RK808_IO_POL_REG, tmp,
				FUNC6(pdata->dvs_gpio[i]) ?
				0 : tmp);
	}

dt_parse_end:
	FUNC8(np);
	return ret;
}