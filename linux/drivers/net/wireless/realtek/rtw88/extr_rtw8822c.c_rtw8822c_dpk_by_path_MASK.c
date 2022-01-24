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
typedef  int /*<<< orphan*/  u32 ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BIT_SUBPAGE ; 
 int /*<<< orphan*/  REG_DPD_CTL1_S0 ; 
 int /*<<< orphan*/  REG_NCTL0 ; 
 int /*<<< orphan*/  RFREG_MASK ; 
 int /*<<< orphan*/  RF_MODE_TRXAGC ; 
 int /*<<< orphan*/  RTW_DPK_DO_DPK ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int) ; 
 int FUNC2 (struct rtw_dev*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u8 FUNC6(struct rtw_dev *rtwdev, u32 tx_agc, u8 path)
{
	u8 result;

	result = FUNC2(rtwdev, path, RTW_DPK_DO_DPK);

	FUNC4(rtwdev, REG_NCTL0, BIT_SUBPAGE, 0x8 | (path << 1));

	result = result | (u8)FUNC3(rtwdev, REG_DPD_CTL1_S0, FUNC0(26));

	FUNC5(rtwdev, path, RF_MODE_TRXAGC, RFREG_MASK, 0x33e14);

	FUNC1(rtwdev, path);

	return result;
}