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
typedef  int u32 ;
struct rtw_hal {int rf_path_num; } ;
struct rtw_dev {struct rtw_chip_info* chip; struct rtw_hal hal; } ;
struct rtw_chip_info {int* rf_base_addr; } ;
typedef  enum rtw_rf_path { ____Placeholder_rtw_rf_path } rtw_rf_path ;

/* Variables and functions */
 int BITS_RFC_DIRECT ; 
 int DISABLE_PI ; 
 int ENABLE_PI ; 
 int REG_RSV_CTRL ; 
 int REG_WLRF1 ; 
 int RFREG_MASK ; 
 int RF_CFGCH ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

bool FUNC3(struct rtw_dev *rtwdev, enum rtw_rf_path rf_path,
			  u32 addr, u32 mask, u32 data)
{
	struct rtw_hal *hal = &rtwdev->hal;
	struct rtw_chip_info *chip = rtwdev->chip;
	const u32 *base_addr = chip->rf_base_addr;
	u32 direct_addr;

	if (rf_path >= hal->rf_path_num) {
		FUNC0(rtwdev, "unsupported rf path (%d)\n", rf_path);
		return false;
	}

	addr &= 0xff;
	direct_addr = base_addr[rf_path] + (addr << 2);
	mask &= RFREG_MASK;

	if (addr == RF_CFGCH) {
		FUNC1(rtwdev, REG_RSV_CTRL, BITS_RFC_DIRECT, DISABLE_PI);
		FUNC1(rtwdev, REG_WLRF1, BITS_RFC_DIRECT, DISABLE_PI);
	}

	FUNC1(rtwdev, direct_addr, mask, data);

	FUNC2(1);

	if (addr == RF_CFGCH) {
		FUNC1(rtwdev, REG_RSV_CTRL, BITS_RFC_DIRECT, ENABLE_PI);
		FUNC1(rtwdev, REG_WLRF1, BITS_RFC_DIRECT, ENABLE_PI);
	}

	return true;
}