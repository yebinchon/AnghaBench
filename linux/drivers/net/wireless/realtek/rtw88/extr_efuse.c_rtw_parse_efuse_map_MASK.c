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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rtw_efuse {int /*<<< orphan*/  logical_size; int /*<<< orphan*/  physical_size; } ;
struct rtw_dev {struct rtw_efuse efuse; struct rtw_chip_info* chip; } ;
struct rtw_chip_info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read_efuse ) (struct rtw_dev*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rtw_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct rtw_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,char*) ; 
 int FUNC6 (struct rtw_dev*,int /*<<< orphan*/ *) ; 

int FUNC7(struct rtw_dev *rtwdev)
{
	struct rtw_chip_info *chip = rtwdev->chip;
	struct rtw_efuse *efuse = &rtwdev->efuse;
	u32 phy_size = efuse->physical_size;
	u32 log_size = efuse->logical_size;
	u8 *phy_map = NULL;
	u8 *log_map = NULL;
	int ret = 0;

	phy_map = FUNC1(phy_size, GFP_KERNEL);
	log_map = FUNC1(log_size, GFP_KERNEL);
	if (!phy_map || !log_map) {
		ret = -ENOMEM;
		goto out_free;
	}

	ret = FUNC4(rtwdev, phy_map);
	if (ret) {
		FUNC5(rtwdev, "failed to dump efuse physical map\n");
		goto out_free;
	}

	FUNC2(log_map, 0xff, log_size);
	ret = FUNC3(rtwdev, phy_map, log_map);
	if (ret) {
		FUNC5(rtwdev, "failed to dump efuse logical map\n");
		goto out_free;
	}

	ret = chip->ops->read_efuse(rtwdev, log_map);
	if (ret) {
		FUNC5(rtwdev, "failed to read efuse map\n");
		goto out_free;
	}

out_free:
	FUNC0(log_map);
	FUNC0(phy_map);

	return ret;
}