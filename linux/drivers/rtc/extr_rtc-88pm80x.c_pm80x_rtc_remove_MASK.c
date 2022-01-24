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
struct pm80x_rtc_info {int /*<<< orphan*/  irq; int /*<<< orphan*/  chip; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct pm80x_rtc_info* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pm80x_rtc_info*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct pm80x_rtc_info *info = FUNC0(pdev);
	FUNC1(info->chip, info->irq, info);
	return 0;
}