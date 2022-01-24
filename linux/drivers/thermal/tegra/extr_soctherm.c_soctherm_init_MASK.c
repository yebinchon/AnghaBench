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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_tsensor_group {scalar_t__ id; int /*<<< orphan*/  pllx_hotspot_diff; int /*<<< orphan*/  pllx_hotspot_mask; int /*<<< orphan*/  pdiv; int /*<<< orphan*/  pdiv_mask; } ;
struct tegra_soctherm {scalar_t__ regs; TYPE_1__* soc; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int num_tsensors; int num_ttgs; struct tegra_tsensor_group** ttgs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SENSOR_HOTSPOT_OFF ; 
 scalar_t__ SENSOR_PDIV ; 
 scalar_t__ TEGRA124_SOCTHERM_SENSOR_PLLX ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_soctherm*,int) ; 
 struct tegra_soctherm* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct platform_device *pdev)
{
	struct tegra_soctherm *tegra = FUNC2(pdev);
	const struct tegra_tsensor_group **ttgs = tegra->soc->ttgs;
	int i;
	u32 pdiv, hotspot;

	/* Initialize raw sensors */
	for (i = 0; i < tegra->soc->num_tsensors; ++i)
		FUNC1(tegra, i);

	/* program pdiv and hotspot offsets per THERM */
	pdiv = FUNC3(tegra->regs + SENSOR_PDIV);
	hotspot = FUNC3(tegra->regs + SENSOR_HOTSPOT_OFF);
	for (i = 0; i < tegra->soc->num_ttgs; ++i) {
		pdiv = FUNC0(pdiv, ttgs[i]->pdiv_mask,
				    ttgs[i]->pdiv);
		/* hotspot offset from PLLX, doesn't need to configure PLLX */
		if (ttgs[i]->id == TEGRA124_SOCTHERM_SENSOR_PLLX)
			continue;
		hotspot =  FUNC0(hotspot,
					ttgs[i]->pllx_hotspot_mask,
					ttgs[i]->pllx_hotspot_diff);
	}
	FUNC5(pdiv, tegra->regs + SENSOR_PDIV);
	FUNC5(hotspot, tegra->regs + SENSOR_HOTSPOT_OFF);

	/* Configure hw throttle */
	FUNC4(&pdev->dev);
}