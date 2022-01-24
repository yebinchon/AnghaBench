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
struct stm32_pwm {int /*<<< orphan*/  lock; } ;
struct pwm_state {int dummy; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pwm_chip*,struct pwm_device*,struct pwm_state const*) ; 
 struct stm32_pwm* FUNC3 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC4(struct pwm_chip *chip, struct pwm_device *pwm,
				  const struct pwm_state *state)
{
	struct stm32_pwm *priv = FUNC3(chip);
	int ret;

	/* protect common prescaler for all active channels */
	FUNC0(&priv->lock);
	ret = FUNC2(chip, pwm, state);
	FUNC1(&priv->lock);

	return ret;
}