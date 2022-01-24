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
struct pwm_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct device* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pwm_chip*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pwm_class ; 

void FUNC4(struct pwm_chip *chip)
{
	struct device *parent;

	/*
	 * If device_create() fails the pwm_chip is still usable by
	 * the kernel it's just not exported.
	 */
	parent = FUNC3(&pwm_class, chip->dev, FUNC1(0, 0), chip,
			       "pwmchip%d", chip->base);
	if (FUNC0(parent)) {
		FUNC2(chip->dev,
			 "device_create failed for pwm_chip sysfs export\n");
	}
}