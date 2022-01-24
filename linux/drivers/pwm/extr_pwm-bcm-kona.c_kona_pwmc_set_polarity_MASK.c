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
struct pwm_device {unsigned int hwpwm; } ;
struct pwm_chip {int /*<<< orphan*/  dev; } ;
struct kona_pwmc {int /*<<< orphan*/  clk; scalar_t__ base; } ;
typedef  enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;

/* Variables and functions */
 scalar_t__ PWM_CONTROL_OFFSET ; 
 int FUNC0 (unsigned int) ; 
 int PWM_POLARITY_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kona_pwmc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct kona_pwmc*,unsigned int) ; 
 unsigned int FUNC6 (scalar_t__) ; 
 struct kona_pwmc* FUNC7 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct pwm_chip *chip, struct pwm_device *pwm,
				  enum pwm_polarity polarity)
{
	struct kona_pwmc *kp = FUNC7(chip);
	unsigned int chan = pwm->hwpwm;
	unsigned int value;
	int ret;

	ret = FUNC2(kp->clk);
	if (ret < 0) {
		FUNC3(chip->dev, "failed to enable clock: %d\n", ret);
		return ret;
	}

	FUNC5(kp, chan);

	value = FUNC6(kp->base + PWM_CONTROL_OFFSET);

	if (polarity == PWM_POLARITY_NORMAL)
		value |= 1 << FUNC0(chan);
	else
		value &= ~(1 << FUNC0(chan));

	FUNC8(value, kp->base + PWM_CONTROL_OFFSET);

	FUNC4(kp, chan);

	FUNC1(kp->clk);

	return 0;
}