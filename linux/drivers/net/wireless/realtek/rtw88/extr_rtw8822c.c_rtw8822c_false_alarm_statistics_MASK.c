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
typedef  int u16 ;
struct rtw_dm_info {int cck_fa_cnt; int ofdm_fa_cnt; int total_fa_cnt; int cck_ok_cnt; int cck_err_cnt; int ofdm_ok_cnt; int ofdm_err_cnt; int ht_ok_cnt; int ht_err_cnt; int vht_ok_cnt; int vht_err_cnt; } ;
struct rtw_dev {struct rtw_dm_info dm_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_ALL_CNT_RST ; 
 int BIT_CCK_BLK_EN ; 
 int /*<<< orphan*/  BIT_CCK_FA_RST ; 
 int /*<<< orphan*/  BIT_COM_RX_GCK_EN ; 
 int /*<<< orphan*/  BIT_OFDM_FA_RST ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  REG_CCANRX ; 
 int /*<<< orphan*/  REG_CCK_FACNT ; 
 int /*<<< orphan*/  REG_CNT_CTRL ; 
 int REG_ENCCK ; 
 int REG_OFDM_FACNT1 ; 
 int REG_OFDM_FACNT2 ; 
 int REG_OFDM_FACNT3 ; 
 int REG_OFDM_FACNT4 ; 
 int REG_OFDM_FACNT5 ; 
 int /*<<< orphan*/  REG_RX_BREAK ; 
 int FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rtw_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct rtw_dev *rtwdev)
{
	struct rtw_dm_info *dm_info = &rtwdev->dm_info;
	u32 cck_enable;
	u32 cck_fa_cnt;
	u32 crc32_cnt;
	u32 ofdm_fa_cnt;
	u32 ofdm_fa_cnt1, ofdm_fa_cnt2, ofdm_fa_cnt3, ofdm_fa_cnt4, ofdm_fa_cnt5;
	u16 parity_fail, rate_illegal, crc8_fail, mcs_fail, sb_search_fail,
	    fast_fsync, crc8_fail_vhta, mcs_fail_vht;

	cck_enable = FUNC3(rtwdev, REG_ENCCK) & BIT_CCK_BLK_EN;
	cck_fa_cnt = FUNC2(rtwdev, REG_CCK_FACNT);

	ofdm_fa_cnt1 = FUNC3(rtwdev, REG_OFDM_FACNT1);
	ofdm_fa_cnt2 = FUNC3(rtwdev, REG_OFDM_FACNT2);
	ofdm_fa_cnt3 = FUNC3(rtwdev, REG_OFDM_FACNT3);
	ofdm_fa_cnt4 = FUNC3(rtwdev, REG_OFDM_FACNT4);
	ofdm_fa_cnt5 = FUNC3(rtwdev, REG_OFDM_FACNT5);

	parity_fail	= FUNC0(FUNC1(31, 16), ofdm_fa_cnt1);
	rate_illegal	= FUNC0(FUNC1(15, 0), ofdm_fa_cnt2);
	crc8_fail	= FUNC0(FUNC1(31, 16), ofdm_fa_cnt2);
	crc8_fail_vhta	= FUNC0(FUNC1(15, 0), ofdm_fa_cnt3);
	mcs_fail	= FUNC0(FUNC1(15, 0), ofdm_fa_cnt4);
	mcs_fail_vht	= FUNC0(FUNC1(31, 16), ofdm_fa_cnt4);
	fast_fsync	= FUNC0(FUNC1(15, 0), ofdm_fa_cnt5);
	sb_search_fail	= FUNC0(FUNC1(31, 16), ofdm_fa_cnt5);

	ofdm_fa_cnt = parity_fail + rate_illegal + crc8_fail + crc8_fail_vhta +
		      mcs_fail + mcs_fail_vht + fast_fsync + sb_search_fail;

	dm_info->cck_fa_cnt = cck_fa_cnt;
	dm_info->ofdm_fa_cnt = ofdm_fa_cnt;
	dm_info->total_fa_cnt = ofdm_fa_cnt;
	dm_info->total_fa_cnt += cck_enable ? cck_fa_cnt : 0;

	crc32_cnt = FUNC3(rtwdev, 0x2c04);
	dm_info->cck_ok_cnt = crc32_cnt & 0xffff;
	dm_info->cck_err_cnt = (crc32_cnt & 0xffff0000) >> 16;
	crc32_cnt = FUNC3(rtwdev, 0x2c14);
	dm_info->ofdm_ok_cnt = crc32_cnt & 0xffff;
	dm_info->ofdm_err_cnt = (crc32_cnt & 0xffff0000) >> 16;
	crc32_cnt = FUNC3(rtwdev, 0x2c10);
	dm_info->ht_ok_cnt = crc32_cnt & 0xffff;
	dm_info->ht_err_cnt = (crc32_cnt & 0xffff0000) >> 16;
	crc32_cnt = FUNC3(rtwdev, 0x2c0c);
	dm_info->vht_ok_cnt = crc32_cnt & 0xffff;
	dm_info->vht_err_cnt = (crc32_cnt & 0xffff0000) >> 16;

	FUNC5(rtwdev, REG_CCANRX, BIT_CCK_FA_RST, 0);
	FUNC5(rtwdev, REG_CCANRX, BIT_CCK_FA_RST, 2);
	FUNC5(rtwdev, REG_CCANRX, BIT_OFDM_FA_RST, 0);
	FUNC5(rtwdev, REG_CCANRX, BIT_OFDM_FA_RST, 2);

	/* disable rx clk gating to reset counters */
	FUNC4(rtwdev, REG_RX_BREAK, BIT_COM_RX_GCK_EN);
	FUNC6(rtwdev, REG_CNT_CTRL, BIT_ALL_CNT_RST);
	FUNC4(rtwdev, REG_CNT_CTRL, BIT_ALL_CNT_RST);
	FUNC6(rtwdev, REG_RX_BREAK, BIT_COM_RX_GCK_EN);
}