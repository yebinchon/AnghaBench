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
struct pm860x_charger_info {int irq_nums; int /*<<< orphan*/ * irq; int /*<<< orphan*/  usb; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pm860x_charger_info*) ; 
 struct pm860x_charger_info* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct pm860x_charger_info *info = FUNC1(pdev);
	int i;

	FUNC2(info->usb);
	for (i = 0; i < info->irq_nums; i++)
		FUNC0(info->irq[i], info);
	return 0;
}