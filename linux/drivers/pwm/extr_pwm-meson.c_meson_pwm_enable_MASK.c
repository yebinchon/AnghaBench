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
typedef  int u32 ;
struct pwm_device {size_t hwpwm; } ;
struct meson_pwm_channel_data {int clk_div_shift; int clk_en_mask; int pwm_en_mask; scalar_t__ reg_offset; } ;
struct meson_pwm_channel {int pre_div; int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; } ;
struct meson_pwm {int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MISC_CLK_DIV_MASK ; 
 int /*<<< orphan*/  PWM_HIGH_MASK ; 
 int /*<<< orphan*/  PWM_LOW_MASK ; 
 scalar_t__ REG_MISC_AB ; 
 struct meson_pwm_channel_data* meson_pwm_per_channel_data ; 
 struct meson_pwm_channel* FUNC1 (struct pwm_device*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct meson_pwm *meson, struct pwm_device *pwm)
{
	struct meson_pwm_channel *channel = FUNC1(pwm);
	struct meson_pwm_channel_data *channel_data;
	unsigned long flags;
	u32 value;

	channel_data = &meson_pwm_per_channel_data[pwm->hwpwm];

	FUNC3(&meson->lock, flags);

	value = FUNC2(meson->base + REG_MISC_AB);
	value &= ~(MISC_CLK_DIV_MASK << channel_data->clk_div_shift);
	value |= channel->pre_div << channel_data->clk_div_shift;
	value |= channel_data->clk_en_mask;
	FUNC5(value, meson->base + REG_MISC_AB);

	value = FUNC0(PWM_HIGH_MASK, channel->hi) |
		FUNC0(PWM_LOW_MASK, channel->lo);
	FUNC5(value, meson->base + channel_data->reg_offset);

	value = FUNC2(meson->base + REG_MISC_AB);
	value |= channel_data->pwm_en_mask;
	FUNC5(value, meson->base + REG_MISC_AB);

	FUNC4(&meson->lock, flags);
}