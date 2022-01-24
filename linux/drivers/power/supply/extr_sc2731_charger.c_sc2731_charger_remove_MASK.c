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
struct sc2731_charger_info {int /*<<< orphan*/  usb_notify; int /*<<< orphan*/  usb_phy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct sc2731_charger_info* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct sc2731_charger_info *info = FUNC0(pdev);

	FUNC1(info->usb_phy, &info->usb_notify);

	return 0;
}