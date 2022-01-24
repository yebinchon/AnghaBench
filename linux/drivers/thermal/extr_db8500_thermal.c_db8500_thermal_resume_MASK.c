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
struct platform_device {int dummy; } ;
struct db8500_thermal_zone {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRCMU_DEFAULT_LOW_TEMP ; 
 int /*<<< orphan*/  THERMAL_TREND_STABLE ; 
 int /*<<< orphan*/ * db8500_thermal_points ; 
 int /*<<< orphan*/  FUNC0 (struct db8500_thermal_zone*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct db8500_thermal_zone* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct db8500_thermal_zone *th = FUNC1(pdev);

	/* Resume and start measuring at the lowest point */
	FUNC0(th, 0, THERMAL_TREND_STABLE,
				     PRCMU_DEFAULT_LOW_TEMP,
				     db8500_thermal_points[0]);

	return 0;
}