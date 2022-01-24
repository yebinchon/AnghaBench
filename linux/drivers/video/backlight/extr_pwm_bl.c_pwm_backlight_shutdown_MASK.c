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
struct pwm_bl_data {int dummy; } ;
struct platform_device {int dummy; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 struct pwm_bl_data* FUNC0 (struct backlight_device*) ; 
 struct backlight_device* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pwm_bl_data*) ; 

__attribute__((used)) static void FUNC3(struct platform_device *pdev)
{
	struct backlight_device *bl = FUNC1(pdev);
	struct pwm_bl_data *pb = FUNC0(bl);

	FUNC2(pb);
}