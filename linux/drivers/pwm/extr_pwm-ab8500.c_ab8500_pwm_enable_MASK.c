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
struct pwm_device {int /*<<< orphan*/  label; } ;
struct pwm_chip {int base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_MISC ; 
 int /*<<< orphan*/  AB8500_PWM_OUT_CTRL7_REG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct pwm_chip *chip, struct pwm_device *pwm)
{
	int ret;

	ret = FUNC0(chip->dev,
				AB8500_MISC, AB8500_PWM_OUT_CTRL7_REG,
				1 << (chip->base - 1), 1 << (chip->base - 1));
	if (ret < 0)
		FUNC1(chip->dev, "%s: Failed to enable PWM, Error %d\n",
							pwm->label, ret);
	return ret;
}