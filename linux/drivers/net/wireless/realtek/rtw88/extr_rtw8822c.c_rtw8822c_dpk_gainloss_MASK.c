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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct rtw_dpk_info {int /*<<< orphan*/ * thermal_dpk_delta; } ;
struct TYPE_2__ {struct rtw_dpk_info dpk_info; } ;
struct rtw_dev {TYPE_1__ dm_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_GAIN_TXBB ; 
 int /*<<< orphan*/  BIT_TXAGC ; 
 int /*<<< orphan*/  RF_MODE_TRXAGC ; 
 int /*<<< orphan*/  RF_TX_GAIN ; 
 int /*<<< orphan*/  RTW_DPK_DAGC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct rtw_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct rtw_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct rtw_dev*,scalar_t__,int,int) ; 
 scalar_t__ FUNC6 (struct rtw_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct rtw_dev*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct rtw_dev*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct rtw_dev*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rtw_dev*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static u32 FUNC11(struct rtw_dev *rtwdev, u8 path)
{
	struct rtw_dpk_info *dpk_info = &rtwdev->dm_info.dpk_info;
	u8 tx_agc, tx_bb, ori_txbb, ori_txagc, tx_agc_search, t1, t2;

	ori_txbb = FUNC6(rtwdev, path);
	ori_txagc = (u8)FUNC9(rtwdev, path, RF_MODE_TRXAGC, BIT_TXAGC);

	FUNC7(rtwdev, path);
	FUNC4(rtwdev, path, RTW_DPK_DAGC);
	FUNC2(rtwdev, path);

	if (FUNC1(rtwdev, path)) {
		FUNC7(rtwdev, path);
		FUNC4(rtwdev, path, RTW_DPK_DAGC);
		FUNC1(rtwdev, path);
	}

	t1 = FUNC8(rtwdev, path);
	tx_bb = FUNC5(rtwdev, path, false, true);
	tx_agc_search = FUNC3(rtwdev, path);

	if (tx_bb < tx_agc_search)
		tx_bb = 0;
	else
		tx_bb = tx_bb - tx_agc_search;

	FUNC10(rtwdev, path, RF_TX_GAIN, BIT_GAIN_TXBB, tx_bb);

	tx_agc = ori_txagc - (ori_txbb - tx_bb);

	t2 = FUNC8(rtwdev, path);

	dpk_info->thermal_dpk_delta[path] = FUNC0(t2 - t1);

	return tx_agc;
}