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
typedef  int u8 ;
struct rtw_hal {int /*<<< orphan*/  antenna_rx; int /*<<< orphan*/  antenna_tx; } ;
struct rtw_dm_info {int cck_gi_u_bnd; int cck_gi_l_bnd; } ;
struct TYPE_2__ {int crystal_cap; } ;
struct rtw_dev {TYPE_1__ efuse; struct rtw_hal hal; struct rtw_dm_info dm_info; } ;

/* Variables and functions */
 int BIT_FEN_BB_GLB_RST ; 
 int BIT_FEN_BB_RSTB ; 
 int BIT_RF_EN ; 
 int BIT_RF_RSTB ; 
 int BIT_RF_SDM_RSTB ; 
 int /*<<< orphan*/  BIT_WLRF1_BBRF_EN ; 
 int DIS_DPD_MASK ; 
 int DIS_DPD_RATEALL ; 
 int /*<<< orphan*/  REG_ANAPAR_XTAL_0 ; 
 int /*<<< orphan*/  REG_DIS_DPD ; 
 int /*<<< orphan*/  REG_RF_CTRL ; 
 int /*<<< orphan*/  REG_SYS_FUNC_EN ; 
 int /*<<< orphan*/  REG_WLRF1 ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*) ; 
 scalar_t__ FUNC5 (struct rtw_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtw_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct rtw_dev *rtwdev)
{
	struct rtw_dm_info *dm_info = &rtwdev->dm_info;
	struct rtw_hal *hal = &rtwdev->hal;
	u8 crystal_cap;
	u8 cck_gi_u_bnd_msb = 0;
	u8 cck_gi_u_bnd_lsb = 0;
	u8 cck_gi_l_bnd_msb = 0;
	u8 cck_gi_l_bnd_lsb = 0;
	bool is_tx2_path;

	/* power on BB/RF domain */
	FUNC8(rtwdev, REG_SYS_FUNC_EN,
		       BIT_FEN_BB_GLB_RST | BIT_FEN_BB_RSTB);
	FUNC8(rtwdev, REG_RF_CTRL,
		       BIT_RF_EN | BIT_RF_RSTB | BIT_RF_SDM_RSTB);
	FUNC7(rtwdev, REG_WLRF1, BIT_WLRF1_BBRF_EN);

	/* disable low rate DPD */
	FUNC6(rtwdev, REG_DIS_DPD, DIS_DPD_MASK, DIS_DPD_RATEALL);

	/* pre init before header files config */
	FUNC1(rtwdev, true);

	FUNC4(rtwdev);

	crystal_cap = rtwdev->efuse.crystal_cap & 0x7f;
	FUNC6(rtwdev, REG_ANAPAR_XTAL_0, 0xfffc00,
			 crystal_cap | (crystal_cap << 7));

	/* post init after header files config */
	FUNC1(rtwdev, false);

	is_tx2_path = false;
	FUNC0(rtwdev, hal->antenna_tx, hal->antenna_rx,
				 is_tx2_path);
	FUNC3(rtwdev);

	cck_gi_u_bnd_msb = (u8)FUNC5(rtwdev, 0x1a98, 0xc000);
	cck_gi_u_bnd_lsb = (u8)FUNC5(rtwdev, 0x1aa8, 0xf0000);
	cck_gi_l_bnd_msb = (u8)FUNC5(rtwdev, 0x1a98, 0xc0);
	cck_gi_l_bnd_lsb = (u8)FUNC5(rtwdev, 0x1a70, 0x0f000000);

	dm_info->cck_gi_u_bnd = ((cck_gi_u_bnd_msb << 4) | (cck_gi_u_bnd_lsb));
	dm_info->cck_gi_l_bnd = ((cck_gi_l_bnd_msb << 4) | (cck_gi_l_bnd_lsb));

	FUNC2(rtwdev);
}