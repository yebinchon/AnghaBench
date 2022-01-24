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
typedef  int u16 ;
struct rtw_coex_dm {int cur_wl_pwr_lvl; } ;
struct rtw_coex {struct rtw_coex_dm dm; } ;
struct rtw_dev {struct rtw_coex coex; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int const,int,int) ; 

__attribute__((used)) static void FUNC2(struct rtw_dev *rtwdev, u8 wl_pwr)
{
	struct rtw_coex *coex = &rtwdev->coex;
	struct rtw_coex_dm *coex_dm = &coex->dm;
	static const u16 reg_addr[] = {0xc58, 0xe58};
	static const u8	wl_tx_power[] = {0xd8, 0xd4, 0xd0, 0xcc, 0xc8};
	u8 i, pwr;

	if (wl_pwr == coex_dm->cur_wl_pwr_lvl)
		return;

	coex_dm->cur_wl_pwr_lvl = wl_pwr;

	if (coex_dm->cur_wl_pwr_lvl >= FUNC0(wl_tx_power))
		coex_dm->cur_wl_pwr_lvl = FUNC0(wl_tx_power) - 1;

	pwr = wl_tx_power[coex_dm->cur_wl_pwr_lvl];

	for (i = 0; i < FUNC0(reg_addr); i++)
		FUNC1(rtwdev, reg_addr[i], 0xff, pwr);
}