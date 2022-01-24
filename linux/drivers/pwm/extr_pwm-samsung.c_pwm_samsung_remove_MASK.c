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
struct samsung_pwm_chip {int /*<<< orphan*/  base_clk; int /*<<< orphan*/  chip; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct samsung_pwm_chip* FUNC1 (struct platform_device*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct samsung_pwm_chip *chip = FUNC1(pdev);
	int ret;

	ret = FUNC2(&chip->chip);
	if (ret < 0)
		return ret;

	FUNC0(chip->base_clk);

	return 0;
}