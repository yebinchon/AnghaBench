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
struct hibvt_pwm_chip {int /*<<< orphan*/  chip; int /*<<< orphan*/  clk; int /*<<< orphan*/  rstc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct hibvt_pwm_chip* FUNC2 (struct platform_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct hibvt_pwm_chip *pwm_chip;

	pwm_chip = FUNC2(pdev);

	FUNC4(pwm_chip->rstc);
	FUNC1(30);
	FUNC5(pwm_chip->rstc);

	FUNC0(pwm_chip->clk);

	return FUNC3(&pwm_chip->chip);
}