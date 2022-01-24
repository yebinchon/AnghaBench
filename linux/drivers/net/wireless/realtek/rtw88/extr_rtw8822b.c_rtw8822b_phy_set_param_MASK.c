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
struct TYPE_2__ {int crystal_cap; } ;
struct rtw_dev {TYPE_1__ efuse; struct rtw_hal hal; } ;

/* Variables and functions */
 int BIT_FEN_BB_GLB_RST ; 
 int BIT_FEN_BB_RSTB ; 
 int BIT_RF_EN ; 
 int BIT_RF_RSTB ; 
 int BIT_RF_SDM_RSTB ; 
 int /*<<< orphan*/  BIT_RX_PSEL_RST ; 
 int /*<<< orphan*/  BIT_WLRF1_BBRF_EN ; 
 int /*<<< orphan*/  REG_RF_CTRL ; 
 int /*<<< orphan*/  REG_RXPSEL ; 
 int /*<<< orphan*/  REG_SYS_FUNC_EN ; 
 int /*<<< orphan*/  REG_WLRF1 ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct rtw_dev *rtwdev)
{
	struct rtw_hal *hal = &rtwdev->hal;
	u8 crystal_cap;
	bool is_tx2_path;

	/* power on BB/RF domain */
	FUNC7(rtwdev, REG_SYS_FUNC_EN,
		       BIT_FEN_BB_RSTB | BIT_FEN_BB_GLB_RST);
	FUNC7(rtwdev, REG_RF_CTRL,
		       BIT_RF_EN | BIT_RF_RSTB | BIT_RF_SDM_RSTB);
	FUNC6(rtwdev, REG_WLRF1, BIT_WLRF1_BBRF_EN);

	/* pre init before header files config */
	FUNC4(rtwdev, REG_RXPSEL, BIT_RX_PSEL_RST);

	FUNC3(rtwdev);

	crystal_cap = rtwdev->efuse.crystal_cap & 0x3F;
	FUNC5(rtwdev, 0x24, 0x7e000000, crystal_cap);
	FUNC5(rtwdev, 0x28, 0x7e, crystal_cap);

	/* post init after header files config */
	FUNC6(rtwdev, REG_RXPSEL, BIT_RX_PSEL_RST);

	is_tx2_path = false;
	FUNC0(rtwdev, hal->antenna_tx, hal->antenna_rx,
				 is_tx2_path);
	FUNC2(rtwdev);

	FUNC1(rtwdev);
}