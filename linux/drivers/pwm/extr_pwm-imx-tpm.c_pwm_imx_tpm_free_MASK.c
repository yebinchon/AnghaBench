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
struct imx_tpm_pwm_chip {int /*<<< orphan*/  lock; int /*<<< orphan*/  user_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct imx_tpm_pwm_chip* FUNC2 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC3(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct imx_tpm_pwm_chip *tpm = FUNC2(chip);

	FUNC0(&tpm->lock);
	tpm->user_count--;
	FUNC1(&tpm->lock);
}