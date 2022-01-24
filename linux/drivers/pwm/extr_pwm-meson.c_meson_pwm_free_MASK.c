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
struct pwm_chip {int dummy; } ;
struct meson_pwm_channel {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct meson_pwm_channel* FUNC1 (struct pwm_device*) ; 

__attribute__((used)) static void FUNC2(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct meson_pwm_channel *channel = FUNC1(pwm);

	if (channel)
		FUNC0(channel->clk);
}