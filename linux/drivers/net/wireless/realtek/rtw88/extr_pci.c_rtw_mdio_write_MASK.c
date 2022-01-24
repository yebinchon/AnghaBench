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
typedef  int /*<<< orphan*/  u16 ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_MDIO_WFLAG_V1 ; 
 int /*<<< orphan*/  REG_MDIO_V1 ; 
 scalar_t__ REG_PCIE_MIX_CFG ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct rtw_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct rtw_dev *rtwdev, u8 addr, u16 data, bool g1)
{
	u8 page;
	u8 wflag;
	u8 cnt;

	FUNC2(rtwdev, REG_MDIO_V1, data);

	page = addr < 0x20 ? 0 : 1;
	page += g1 ? 0 : 2;
	FUNC4(rtwdev, REG_PCIE_MIX_CFG, addr & 0x1f);
	FUNC4(rtwdev, REG_PCIE_MIX_CFG + 3, page);

	FUNC3(rtwdev, REG_PCIE_MIX_CFG, BIT_MDIO_WFLAG_V1, 1);
	wflag = FUNC1(rtwdev, REG_PCIE_MIX_CFG, BIT_MDIO_WFLAG_V1);

	cnt = 20;
	while (wflag && (cnt != 0)) {
		FUNC5(10);
		wflag = FUNC1(rtwdev, REG_PCIE_MIX_CFG,
					BIT_MDIO_WFLAG_V1);
		cnt--;
	}

	FUNC0(wflag, "MDIO write fail\n");
}