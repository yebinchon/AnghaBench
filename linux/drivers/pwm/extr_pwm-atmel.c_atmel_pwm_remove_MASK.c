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
struct platform_device {int dummy; } ;
struct atmel_pwm_chip {int /*<<< orphan*/  chip; int /*<<< orphan*/  isr_lock; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct atmel_pwm_chip* FUNC2 (struct platform_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct atmel_pwm_chip *atmel_pwm = FUNC2(pdev);

	FUNC0(atmel_pwm->clk);
	FUNC1(&atmel_pwm->isr_lock);

	return FUNC3(&atmel_pwm->chip);
}