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
struct rockchip_thermal_sensor {int dummy; } ;
struct rockchip_thermal_data {int /*<<< orphan*/  clk; int /*<<< orphan*/  pclk; int /*<<< orphan*/  regs; TYPE_1__* chip; struct rockchip_thermal_sensor* sensors; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int chn_num; int /*<<< orphan*/  (* control ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct rockchip_thermal_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rockchip_thermal_sensor*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct rockchip_thermal_data *thermal = FUNC1(pdev);
	int i;

	for (i = 0; i < thermal->chip->chn_num; i++) {
		struct rockchip_thermal_sensor *sensor = &thermal->sensors[i];

		FUNC2(sensor, false);
	}

	thermal->chip->control(thermal->regs, false);

	FUNC0(thermal->pclk);
	FUNC0(thermal->clk);

	return 0;
}