#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct mtk_disp_pwm {int /*<<< orphan*/  clk_main; int /*<<< orphan*/  clk_mm; TYPE_1__* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  enable_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_PWM_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_disp_pwm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mtk_disp_pwm* FUNC2 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC3(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct mtk_disp_pwm *mdp = FUNC2(chip);

	FUNC1(mdp, DISP_PWM_EN, mdp->data->enable_mask,
				 0x0);

	FUNC0(mdp->clk_mm);
	FUNC0(mdp->clk_main);
}