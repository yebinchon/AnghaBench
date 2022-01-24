#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct axp288_chrg_info {TYPE_1__* pdev; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXP20X_CHRG_CTRL1 ; 
 int /*<<< orphan*/  CHRG_CCCV_CHG_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct axp288_chrg_info *info,
								bool enable)
{
	int ret;

	if (enable)
		ret = FUNC1(info->regmap, AXP20X_CHRG_CTRL1,
				CHRG_CCCV_CHG_EN, CHRG_CCCV_CHG_EN);
	else
		ret = FUNC1(info->regmap, AXP20X_CHRG_CTRL1,
				CHRG_CCCV_CHG_EN, 0);
	if (ret < 0)
		FUNC0(&info->pdev->dev, "axp288 enable charger %d\n", ret);

	return ret;
}