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
struct rtw_hal {int chip_version; int fab_version; int mp_chip; int rf_path_num; int /*<<< orphan*/  rcr; void* antenna_rx; void* antenna_tx; int /*<<< orphan*/  rf_type; int /*<<< orphan*/  cut_version; } ;
struct rtw_efuse {int /*<<< orphan*/  protect_size; int /*<<< orphan*/  logical_size; int /*<<< orphan*/  physical_size; } ;
struct TYPE_2__ {int rpwm_addr; } ;
struct rtw_dev {struct rtw_hal hal; TYPE_1__ hci; struct rtw_efuse efuse; struct rtw_chip_info* chip; } ;
struct rtw_chip_info {int /*<<< orphan*/  ptct_efuse_size; int /*<<< orphan*/  log_efuse_size; int /*<<< orphan*/  phy_efuse_size; } ;

/* Variables and functions */
 void* BB_PATH_A ; 
 void* BB_PATH_AB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int BIT_RF_TYPE_ID ; 
 int BIT_RTL_ID ; 
 int /*<<< orphan*/  BIT_VHT_DACK ; 
 int EINVAL ; 
 int /*<<< orphan*/  REG_SYS_CFG1 ; 
 int /*<<< orphan*/  RF_1T1R ; 
 int /*<<< orphan*/  RF_2T2R ; 
#define  RTW_HCI_TYPE_PCIE 128 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,char*) ; 
 int FUNC3 (struct rtw_dev*) ; 
 int FUNC4 (struct rtw_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rtw_dev *rtwdev)
{
	struct rtw_chip_info *chip = rtwdev->chip;
	struct rtw_hal *hal = &rtwdev->hal;
	struct rtw_efuse *efuse = &rtwdev->efuse;
	int ret = 0;

	switch (FUNC3(rtwdev)) {
	case RTW_HCI_TYPE_PCIE:
		rtwdev->hci.rpwm_addr = 0x03d9;
		break;
	default:
		FUNC2(rtwdev, "unsupported hci type\n");
		return -EINVAL;
	}

	hal->chip_version = FUNC4(rtwdev, REG_SYS_CFG1);
	hal->fab_version = FUNC1(hal->chip_version) >> 2;
	hal->cut_version = FUNC0(hal->chip_version);
	hal->mp_chip = (hal->chip_version & BIT_RTL_ID) ? 0 : 1;
	if (hal->chip_version & BIT_RF_TYPE_ID) {
		hal->rf_type = RF_2T2R;
		hal->rf_path_num = 2;
		hal->antenna_tx = BB_PATH_AB;
		hal->antenna_rx = BB_PATH_AB;
	} else {
		hal->rf_type = RF_1T1R;
		hal->rf_path_num = 1;
		hal->antenna_tx = BB_PATH_A;
		hal->antenna_rx = BB_PATH_A;
	}

	if (hal->fab_version == 2)
		hal->fab_version = 1;
	else if (hal->fab_version == 1)
		hal->fab_version = 2;

	efuse->physical_size = chip->phy_efuse_size;
	efuse->logical_size = chip->log_efuse_size;
	efuse->protect_size = chip->ptct_efuse_size;

	/* default use ack */
	rtwdev->hal.rcr |= BIT_VHT_DACK;

	return ret;
}