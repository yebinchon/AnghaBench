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
typedef  int /*<<< orphan*/  u32 ;
struct vt8500_chip {scalar_t__ base; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;
typedef  enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_INVERT ; 
 int PWM_POLARITY_INVERSED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_CTRL_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (struct vt8500_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct vt8500_chip* FUNC3 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct pwm_chip *chip,
				   struct pwm_device *pwm,
				   enum pwm_polarity polarity)
{
	struct vt8500_chip *vt8500 = FUNC3(chip);
	u32 val;

	val = FUNC2(vt8500->base + FUNC0(pwm->hwpwm));

	if (polarity == PWM_POLARITY_INVERSED)
		val |= CTRL_INVERT;
	else
		val &= ~CTRL_INVERT;

	FUNC4(val, vt8500->base + FUNC0(pwm->hwpwm));
	FUNC1(vt8500, pwm->hwpwm, STATUS_CTRL_UPDATE);

	return 0;
}