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
struct max8973_chip {int junction_temp_warning; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int MAX77621_CHIPID_TJINT_S ; 
 int MAX77621_NORMAL_OPERATING_TEMP ; 
 int /*<<< orphan*/  MAX8973_CHIPID1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC2(void *data, int *temp)
{
	struct max8973_chip *mchip = data;
	unsigned int val;
	int ret;

	ret = FUNC1(mchip->regmap, MAX8973_CHIPID1, &val);
	if (ret < 0) {
		FUNC0(mchip->dev, "Failed to read register CHIPID1, %d", ret);
		return ret;
	}

	/* +1 degC to trigger cool devive */
	if (val & MAX77621_CHIPID_TJINT_S)
		*temp = mchip->junction_temp_warning + 1000;
	else
		*temp = MAX77621_NORMAL_OPERATING_TEMP;

	return 0;
}