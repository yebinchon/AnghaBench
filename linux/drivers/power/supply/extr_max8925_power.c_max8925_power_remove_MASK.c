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
struct max8925_power_info {int /*<<< orphan*/  battery; int /*<<< orphan*/  usb; int /*<<< orphan*/  ac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct max8925_power_info*) ; 
 struct max8925_power_info* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct max8925_power_info *info = FUNC1(pdev);

	if (info) {
		FUNC2(info->ac);
		FUNC2(info->usb);
		FUNC2(info->battery);
		FUNC0(info);
	}
	return 0;
}