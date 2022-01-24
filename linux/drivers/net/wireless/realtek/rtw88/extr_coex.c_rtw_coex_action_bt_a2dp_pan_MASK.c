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
typedef  int u8 ;
struct rtw_efuse {scalar_t__ share_ant; } ;
struct rtw_coex_stat {scalar_t__ wl_noisy_level; scalar_t__ wl_gl_busy; } ;
struct rtw_coex {struct rtw_coex_stat stat; } ;
struct rtw_dev {struct rtw_chip_info* chip; struct rtw_efuse efuse; struct rtw_coex coex; } ;
struct rtw_chip_info {int /*<<< orphan*/ * wl_rf_para_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  COEX_SET_ANT_2G ; 
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int,int) ; 

__attribute__((used)) static void FUNC4(struct rtw_dev *rtwdev)
{
	struct rtw_coex *coex = &rtwdev->coex;
	struct rtw_coex_stat *coex_stat = &coex->stat;
	struct rtw_efuse *efuse = &rtwdev->efuse;
	struct rtw_chip_info *chip = rtwdev->chip;
	u8 table_case, tdma_case;

	if (efuse->share_ant) {
		/* Shared-Ant */
		if (coex_stat->wl_gl_busy &&
		    coex_stat->wl_noisy_level == 0)
			table_case = 14;
		else
			table_case = 10;

		if (coex_stat->wl_gl_busy)
			tdma_case = 15;
		else
			tdma_case = 20;
	} else {
		/* Non-Shared-Ant */
		table_case = 112;

		if (coex_stat->wl_gl_busy)
			tdma_case = 115;
		else
			tdma_case = 120;
	}

	FUNC0(rtwdev, false, COEX_SET_ANT_2G);
	FUNC1(rtwdev, chip->wl_rf_para_rx[0]);
	FUNC2(rtwdev, table_case);
	FUNC3(rtwdev, false, tdma_case);
}