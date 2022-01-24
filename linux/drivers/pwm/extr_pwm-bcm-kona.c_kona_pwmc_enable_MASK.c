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
struct pwm_device {int dummy; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;
struct kona_pwmc {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct pwm_chip*,struct pwm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pwm_device*) ; 
 struct kona_pwmc* FUNC6 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC7(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct kona_pwmc *kp = FUNC6(chip);
	int ret;

	ret = FUNC1(kp->clk);
	if (ret < 0) {
		FUNC2(chip->dev, "failed to enable clock: %d\n", ret);
		return ret;
	}

	ret = FUNC3(chip, pwm, FUNC4(pwm),
			       FUNC5(pwm));
	if (ret < 0) {
		FUNC0(kp->clk);
		return ret;
	}

	return 0;
}