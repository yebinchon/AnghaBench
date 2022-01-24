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
struct pwm_device {size_t hwpwm; } ;
struct pwm_chip {struct device* dev; } ;
struct meson_pwm_channel {scalar_t__ clk; scalar_t__ clk_parent; } ;
struct meson_pwm {struct meson_pwm_channel* channels; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int,...) ; 
 struct meson_pwm_channel* FUNC4 (struct pwm_device*) ; 
 int FUNC5 (struct pwm_device*,struct meson_pwm_channel*) ; 
 struct meson_pwm* FUNC6 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC7(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct meson_pwm *meson = FUNC6(chip);
	struct meson_pwm_channel *channel;
	struct device *dev = chip->dev;
	int err;

	channel = FUNC4(pwm);
	if (channel)
		return 0;

	channel = &meson->channels[pwm->hwpwm];

	if (channel->clk_parent) {
		err = FUNC2(channel->clk, channel->clk_parent);
		if (err < 0) {
			FUNC3(dev, "failed to set parent %s for %s: %d\n",
				FUNC0(channel->clk_parent),
				FUNC0(channel->clk), err);
				return err;
		}
	}

	err = FUNC1(channel->clk);
	if (err < 0) {
		FUNC3(dev, "failed to enable clock %s: %d\n",
			FUNC0(channel->clk), err);
		return err;
	}

	return FUNC5(pwm, channel);
}