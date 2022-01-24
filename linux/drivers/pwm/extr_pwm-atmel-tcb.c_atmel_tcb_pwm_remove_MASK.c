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
struct platform_device {int dummy; } ;
struct atmel_tcb_pwm_chip {TYPE_1__* tc; int /*<<< orphan*/  chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  slow_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct atmel_tcb_pwm_chip* FUNC2 (struct platform_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct atmel_tcb_pwm_chip *tcbpwm = FUNC2(pdev);
	int err;

	FUNC1(tcbpwm->tc->slow_clk);

	err = FUNC3(&tcbpwm->chip);
	if (err < 0)
		return err;

	FUNC0(tcbpwm->tc);

	return 0;
}