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
struct TYPE_2__ {int /*<<< orphan*/  pwms; } ;
struct rockchip_pwm_chip {TYPE_1__ chip; int /*<<< orphan*/  clk; int /*<<< orphan*/  pclk; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct rockchip_pwm_chip* FUNC2 (struct platform_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct rockchip_pwm_chip *pc = FUNC2(pdev);

	/*
	 * Disable the PWM clk before unpreparing it if the PWM device is still
	 * running. This should only happen when the last PWM user left it
	 * enabled, or when nobody requested a PWM that was previously enabled
	 * by the bootloader.
	 *
	 * FIXME: Maybe the core should disable all PWM devices in
	 * pwmchip_remove(). In this case we'd only have to call
	 * clk_unprepare() after pwmchip_remove().
	 *
	 */
	if (FUNC3(pc->chip.pwms))
		FUNC0(pc->clk);

	FUNC1(pc->pclk);
	FUNC1(pc->clk);

	return FUNC4(&pc->chip);
}