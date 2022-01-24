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
struct sc27xx_fgu_data {scalar_t__ base; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 scalar_t__ SC27XX_FGU_VOLTAGE ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int FUNC1 (struct sc27xx_fgu_data*,int) ; 

__attribute__((used)) static int FUNC2(struct sc27xx_fgu_data *data, int *val)
{
	int ret, vol;

	ret = FUNC0(data->regmap, data->base + SC27XX_FGU_VOLTAGE, &vol);
	if (ret)
		return ret;

	/*
	 * It is ADC values reading from registers which need to convert to
	 * corresponding voltage values.
	 */
	*val = FUNC1(data, vol);

	return 0;
}