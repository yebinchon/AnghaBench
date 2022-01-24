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
struct da9052_bl {int /*<<< orphan*/  state; scalar_t__ brightness; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9052_WLEDS_OFF ; 
 struct da9052_bl* FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct da9052_bl*) ; 
 struct backlight_device* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct backlight_device *bl = FUNC2(pdev);
	struct da9052_bl *wleds = FUNC0(bl);

	wleds->brightness = 0;
	wleds->state = DA9052_WLEDS_OFF;
	FUNC1(wleds);

	return 0;
}