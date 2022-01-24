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
struct axp288_fg_info {scalar_t__* irq; int /*<<< orphan*/ * iio_channel; int /*<<< orphan*/  bat; } ;

/* Variables and functions */
 int AXP288_FG_INTR_NUM ; 
 int IIO_CHANNEL_NUM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct axp288_fg_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct axp288_fg_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct axp288_fg_info* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct axp288_fg_info *info = FUNC3(pdev);
	int i;

	FUNC4(info->bat);
	FUNC1(info);

	for (i = 0; i < AXP288_FG_INTR_NUM; i++)
		if (info->irq[i] >= 0)
			FUNC0(info->irq[i], info);

	for (i = 0; i < IIO_CHANNEL_NUM; i++)
		FUNC2(info->iio_channel[i]);

	return 0;
}