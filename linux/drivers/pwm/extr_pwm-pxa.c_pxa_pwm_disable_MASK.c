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
struct pxa_pwm_chip {int /*<<< orphan*/  clk; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pxa_pwm_chip* FUNC1 (struct pwm_chip*) ; 

__attribute__((used)) static void FUNC2(struct pwm_chip *chip, struct pwm_device *pwm)
{
	struct pxa_pwm_chip *pc = FUNC1(chip);

	FUNC0(pc->clk);
}