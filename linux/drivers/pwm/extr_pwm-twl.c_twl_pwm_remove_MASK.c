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
struct twl_pwm_chip {int /*<<< orphan*/  chip; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct twl_pwm_chip* FUNC0 (struct platform_device*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct twl_pwm_chip *twl = FUNC0(pdev);

	return FUNC1(&twl->chip);
}