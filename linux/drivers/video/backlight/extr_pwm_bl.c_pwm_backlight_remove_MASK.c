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
struct pwm_bl_data {int /*<<< orphan*/  pwm; scalar_t__ legacy; int /*<<< orphan*/  (* exit ) (int /*<<< orphan*/ *) ;} ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct backlight_device*) ; 
 struct pwm_bl_data* FUNC1 (struct backlight_device*) ; 
 struct backlight_device* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pwm_bl_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct backlight_device *bl = FUNC2(pdev);
	struct pwm_bl_data *pb = FUNC1(bl);

	FUNC0(bl);
	FUNC3(pb);

	if (pb->exit)
		pb->exit(&pdev->dev);
	if (pb->legacy)
		FUNC4(pb->pwm);

	return 0;
}