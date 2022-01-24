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
 int /*<<< orphan*/  AXP20X_VBUS_IPSOUT_MGMT ; 
 int /*<<< orphan*/  VBUS_ISPOUT_VBUS_PATH_DIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct axp288_chrg_info *info,
								bool enable)
{
	int ret;

	if (enable)
		ret = FUNC1(info->regmap, AXP20X_VBUS_IPSOUT_MGMT,
					VBUS_ISPOUT_VBUS_PATH_DIS, 0);
	else
		ret = FUNC1(info->regmap, AXP20X_VBUS_IPSOUT_MGMT,
			VBUS_ISPOUT_VBUS_PATH_DIS, VBUS_ISPOUT_VBUS_PATH_DIS);

	if (ret < 0)
		FUNC0(&info->pdev->dev, "axp288 vbus path select %d\n", ret);

	return ret;
}