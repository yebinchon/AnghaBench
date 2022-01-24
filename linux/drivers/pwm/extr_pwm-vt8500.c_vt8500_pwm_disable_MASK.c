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
struct vt8500_chip {int /*<<< orphan*/  clk; scalar_t__ base; } ;
struct pwm_device {int /*<<< orphan*/  hwpwm; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_ENABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_CTRL_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vt8500_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct vt8500_chip* FUNC4 (struct pwm_chip*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct vt8500_chip *vt8500 = FUNC4(chip);
	u32 val;

	val = FUNC3(vt8500->base + FUNC0(pwm->hwpwm));
	val &= ~CTRL_ENABLE;
	FUNC5(val, vt8500->base + FUNC0(pwm->hwpwm));
	FUNC2(vt8500, pwm->hwpwm, STATUS_CTRL_UPDATE);

	FUNC1(vt8500->clk);
}