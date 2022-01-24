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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct gpd_pocket_fan_data {void* gpio1; int /*<<< orphan*/ * dev; void* gpio0; void* dts1; void* dts0; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_ASIS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void*) ; 
 int MAX_SPEED ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct gpd_pocket_fan_data* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gpd_pocket_fan_data*) ; 
 int /*<<< orphan*/  gpd_pocket_fan_worker ; 
 int hysteresis ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct gpd_pocket_fan_data*) ; 
 int speed_on_ac ; 
 int* temp_limits ; 
 void* FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct gpd_pocket_fan_data *fan;
	int i;

	for (i = 0; i < FUNC0(temp_limits); i++) {
		if (temp_limits[i] < 40000 || temp_limits[i] > 70000) {
			FUNC4(&pdev->dev, "Invalid temp-limit %d (must be between 40000 and 70000)\n",
				temp_limits[i]);
			return -EINVAL;
		}
	}
	if (hysteresis < 1000 || hysteresis > 10000) {
		FUNC4(&pdev->dev, "Invalid hysteresis %d (must be between 1000 and 10000)\n",
			hysteresis);
		return -EINVAL;
	}
	if (speed_on_ac < 0 || speed_on_ac > MAX_SPEED) {
		FUNC4(&pdev->dev, "Invalid speed_on_ac %d (must be between 0 and 3)\n",
			speed_on_ac);
		return -EINVAL;
	}

	fan = FUNC6(&pdev->dev, sizeof(*fan), GFP_KERNEL);
	if (!fan)
		return -ENOMEM;

	fan->dev = &pdev->dev;
	FUNC1(&fan->work, gpd_pocket_fan_worker);

	/* Note this returns a "weak" reference which we don't need to free */
	fan->dts0 = FUNC9("soc_dts0");
	if (FUNC2(fan->dts0))
		return -EPROBE_DEFER;

	fan->dts1 = FUNC9("soc_dts1");
	if (FUNC2(fan->dts1))
		return -EPROBE_DEFER;

	fan->gpio0 = FUNC5(fan->dev, NULL, 0, GPIOD_ASIS);
	if (FUNC2(fan->gpio0))
		return FUNC3(fan->gpio0);

	fan->gpio1 = FUNC5(fan->dev, NULL, 1, GPIOD_ASIS);
	if (FUNC2(fan->gpio1))
		return FUNC3(fan->gpio1);

	FUNC7(fan);

	FUNC8(pdev, fan);
	return 0;
}