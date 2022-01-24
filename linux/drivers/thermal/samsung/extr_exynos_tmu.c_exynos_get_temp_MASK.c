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
struct exynos_tmu_data {int (* tmu_read ) (struct exynos_tmu_data*) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  clk; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int MCELSIUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct exynos_tmu_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct exynos_tmu_data*) ; 

__attribute__((used)) static int FUNC6(void *p, int *temp)
{
	struct exynos_tmu_data *data = p;
	int value, ret = 0;

	if (!data || !data->tmu_read)
		return -EINVAL;
	else if (!data->enabled)
		/*
		 * Called too early, probably
		 * from thermal_zone_of_sensor_register().
		 */
		return -EAGAIN;

	FUNC3(&data->lock);
	FUNC1(data->clk);

	value = data->tmu_read(data);
	if (value < 0)
		ret = value;
	else
		*temp = FUNC2(data, value) * MCELSIUS;

	FUNC0(data->clk);
	FUNC4(&data->lock);

	return ret;
}