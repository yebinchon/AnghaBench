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
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BIT_APP_PHYSTS ; 
 int PHY_STATUS_SIZE ; 
 int /*<<< orphan*/  REG_RCR ; 
 scalar_t__ REG_RX_DRVINFO_SZ ; 
 scalar_t__ REG_TRXFF_BNDY ; 
 scalar_t__ REG_WMAC_OPTION_FUNCTION ; 
 int FUNC1 (struct rtw_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC5(struct rtw_dev *rtwdev)
{
	u8 value8;

	FUNC4(rtwdev, REG_RX_DRVINFO_SZ, PHY_STATUS_SIZE);
	value8 = FUNC1(rtwdev, REG_TRXFF_BNDY + 1);
	value8 &= 0xF0;
	/* For rxdesc len = 0 issue */
	value8 |= 0xF;
	FUNC4(rtwdev, REG_TRXFF_BNDY + 1, value8);
	FUNC3(rtwdev, REG_RCR, BIT_APP_PHYSTS);
	FUNC2(rtwdev, REG_WMAC_OPTION_FUNCTION + 4, FUNC0(8) | FUNC0(9));

	return 0;
}