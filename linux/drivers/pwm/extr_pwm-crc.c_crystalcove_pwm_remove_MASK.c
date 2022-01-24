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
struct crystalcove_pwm {int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 struct crystalcove_pwm* FUNC0 (struct platform_device*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct crystalcove_pwm *pwm = FUNC0(pdev);

	return FUNC1(&pwm->chip);
}