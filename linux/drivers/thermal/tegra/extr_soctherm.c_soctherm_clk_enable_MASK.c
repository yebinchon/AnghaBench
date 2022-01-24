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
struct tegra_soctherm {int /*<<< orphan*/  reset; int /*<<< orphan*/  clock_soctherm; int /*<<< orphan*/  clock_tsensor; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct tegra_soctherm* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev, bool enable)
{
	struct tegra_soctherm *tegra = FUNC2(pdev);
	int err;

	if (!tegra->clock_soctherm || !tegra->clock_tsensor)
		return -EINVAL;

	FUNC3(tegra->reset);

	if (enable) {
		err = FUNC1(tegra->clock_soctherm);
		if (err) {
			FUNC4(tegra->reset);
			return err;
		}

		err = FUNC1(tegra->clock_tsensor);
		if (err) {
			FUNC0(tegra->clock_soctherm);
			FUNC4(tegra->reset);
			return err;
		}
	} else {
		FUNC0(tegra->clock_tsensor);
		FUNC0(tegra->clock_soctherm);
	}

	FUNC4(tegra->reset);

	return 0;
}