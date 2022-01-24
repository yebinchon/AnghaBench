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
struct TYPE_2__ {unsigned int npwm; int /*<<< orphan*/ * pwms; } ;
struct stm32_pwm {TYPE_1__ chip; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct stm32_pwm* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct stm32_pwm *priv = FUNC0(pdev);
	unsigned int i;

	for (i = 0; i < priv->chip.npwm; i++)
		FUNC1(&priv->chip.pwms[i]);

	FUNC2(&priv->chip);

	return 0;
}