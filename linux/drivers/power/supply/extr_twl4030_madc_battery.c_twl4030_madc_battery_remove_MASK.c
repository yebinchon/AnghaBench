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
struct twl4030_madc_battery {int /*<<< orphan*/  channel_temp; int /*<<< orphan*/  channel_ichg; int /*<<< orphan*/  channel_vbat; int /*<<< orphan*/  psy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct twl4030_madc_battery* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct twl4030_madc_battery *bat = FUNC1(pdev);

	FUNC2(bat->psy);

	FUNC0(bat->channel_vbat);
	FUNC0(bat->channel_ichg);
	FUNC0(bat->channel_temp);

	return 0;
}