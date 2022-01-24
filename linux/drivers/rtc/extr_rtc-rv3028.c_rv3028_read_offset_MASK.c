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
struct rv3028_data {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 long FUNC0 (int,int) ; 
 int OFFSET_STEP_PPT ; 
 int /*<<< orphan*/  RV3028_BACKUP ; 
 int /*<<< orphan*/  RV3028_OFFSET ; 
 struct rv3028_data* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, long *offset)
{
	struct rv3028_data *rv3028 = FUNC1(dev);
	int ret, value, steps;

	ret = FUNC2(rv3028->regmap, RV3028_OFFSET, &value);
	if (ret < 0)
		return ret;

	steps = FUNC3(value << 1, 8);

	ret = FUNC2(rv3028->regmap, RV3028_BACKUP, &value);
	if (ret < 0)
		return ret;

	steps += value >> 7;

	*offset = FUNC0(steps * OFFSET_STEP_PPT, 1000);

	return 0;
}