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
typedef  int u8 ;
struct regulator_dev {int dummy; } ;
struct max8998_platform_data {int /*<<< orphan*/  buck2_set3; int /*<<< orphan*/  buck_voltage_lock; int /*<<< orphan*/  buck1_set2; int /*<<< orphan*/  buck1_set1; } ;
struct max8998_data {unsigned int* buck1_vol; int buck1_idx; unsigned int* buck2_vol; int buck2_idx; int /*<<< orphan*/  dev; TYPE_1__* iodev; } ;
struct i2c_client {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {struct i2c_client* i2c; struct max8998_platform_data* pdata; } ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int EINVAL ; 
#define  MAX8998_BUCK1 131 
#define  MAX8998_BUCK2 130 
#define  MAX8998_BUCK3 129 
#define  MAX8998_BUCK4 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct regulator_dev*,int*,int*,int*) ; 
 int FUNC7 (struct i2c_client*,int,unsigned int,int) ; 
 int FUNC8 (struct i2c_client*,int,unsigned int) ; 
 struct max8998_data* FUNC9 (struct regulator_dev*) ; 
 int FUNC10 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC11(struct regulator_dev *rdev,
					unsigned selector)
{
	struct max8998_data *max8998 = FUNC9(rdev);
	struct max8998_platform_data *pdata = max8998->iodev->pdata;
	struct i2c_client *i2c = max8998->iodev->i2c;
	int buck = FUNC10(rdev);
	int reg, shift = 0, mask, ret, j;
	static u8 buck1_last_val;

	ret = FUNC6(rdev, &reg, &shift, &mask);
	if (ret)
		return ret;

	switch (buck) {
	case MAX8998_BUCK1:
		FUNC3(max8998->dev,
			"BUCK1, selector:%d, buck1_vol1:%d, buck1_vol2:%d\n"
			"buck1_vol3:%d, buck1_vol4:%d\n",
			selector, max8998->buck1_vol[0], max8998->buck1_vol[1],
			max8998->buck1_vol[2], max8998->buck1_vol[3]);

		if (FUNC5(pdata->buck1_set1) &&
		    FUNC5(pdata->buck1_set2)) {

			/* check if requested voltage */
			/* value is already defined */
			for (j = 0; j < FUNC0(max8998->buck1_vol); j++) {
				if (max8998->buck1_vol[j] == selector) {
					max8998->buck1_idx = j;
					FUNC1(pdata->buck1_set1,
						       pdata->buck1_set2, j);
					goto buck1_exit;
				}
			}

			if (pdata->buck_voltage_lock)
				return -EINVAL;

			/* no predefine regulator found */
			max8998->buck1_idx = (buck1_last_val % 2) + 2;
			FUNC3(max8998->dev, "max8998->buck1_idx:%d\n",
				max8998->buck1_idx);
			max8998->buck1_vol[max8998->buck1_idx] = selector;
			ret = FUNC6(rdev, &reg,
							   &shift,
							   &mask);
			ret = FUNC8(i2c, reg, selector);
			FUNC1(pdata->buck1_set1,
				       pdata->buck1_set2, max8998->buck1_idx);
			buck1_last_val++;
buck1_exit:
			FUNC3(max8998->dev, "%s: SET1:%d, SET2:%d\n",
				i2c->name, FUNC4(pdata->buck1_set1),
				FUNC4(pdata->buck1_set2));
			break;
		} else {
			ret = FUNC8(i2c, reg, selector);
		}
		break;

	case MAX8998_BUCK2:
		FUNC3(max8998->dev,
			"BUCK2, selector:%d buck2_vol1:%d, buck2_vol2:%d\n",
			selector, max8998->buck2_vol[0], max8998->buck2_vol[1]);
		if (FUNC5(pdata->buck2_set3)) {

			/* check if requested voltage */
			/* value is already defined */
			for (j = 0; j < FUNC0(max8998->buck2_vol); j++) {
				if (max8998->buck2_vol[j] == selector) {
					max8998->buck2_idx = j;
					FUNC2(pdata->buck2_set3, j);
					goto buck2_exit;
				}
			}

			if (pdata->buck_voltage_lock)
				return -EINVAL;

			FUNC6(rdev,
					&reg, &shift, &mask);
			ret = FUNC8(i2c, reg, selector);
			max8998->buck2_vol[max8998->buck2_idx] = selector;
			FUNC2(pdata->buck2_set3, max8998->buck2_idx);
buck2_exit:
			FUNC3(max8998->dev, "%s: SET3:%d\n", i2c->name,
				FUNC4(pdata->buck2_set3));
		} else {
			ret = FUNC8(i2c, reg, selector);
		}
		break;

	case MAX8998_BUCK3:
	case MAX8998_BUCK4:
		ret = FUNC7(i2c, reg, selector<<shift,
					 mask<<shift);
		break;
	}

	return ret;
}