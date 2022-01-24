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
struct pwm_state {int dummy; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct imx_tpm_pwm_param {int dummy; } ;
struct imx_tpm_pwm_chip {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pwm_chip*,struct imx_tpm_pwm_param*,struct pwm_state*,struct pwm_device*) ; 
 int FUNC3 (struct pwm_chip*,struct imx_tpm_pwm_param*,struct pwm_state*,struct pwm_state const*) ; 
 struct imx_tpm_pwm_chip* FUNC4 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC5(struct pwm_chip *chip,
			     struct pwm_device *pwm,
			     const struct pwm_state *state)
{
	struct imx_tpm_pwm_chip *tpm = FUNC4(chip);
	struct imx_tpm_pwm_param param;
	struct pwm_state real_state;
	int ret;

	ret = FUNC3(chip, &param, &real_state, state);
	if (ret)
		return ret;

	FUNC0(&tpm->lock);
	ret = FUNC2(chip, &param, &real_state, pwm);
	FUNC1(&tpm->lock);

	return ret;
}