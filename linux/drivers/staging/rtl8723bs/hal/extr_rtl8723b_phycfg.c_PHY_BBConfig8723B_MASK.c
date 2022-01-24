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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct hal_com_data {int CrystalCap; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int BIT0 ; 
 int BIT1 ; 
 int BIT13 ; 
 int FEN_BBRSTB ; 
 int FEN_BB_GLB_RSTn ; 
 int FEN_DIO_PCIE ; 
 int FEN_PCIEA ; 
 int FEN_PPLL ; 
 struct hal_com_data* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  ODM_RF_PATH_A ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ REG_AFE_XTAL_CTRL ; 
 int /*<<< orphan*/  REG_MAC_PHY_CTRL ; 
 scalar_t__ REG_RF_CTRL ; 
 scalar_t__ REG_SYS_FUNC_EN ; 
 int RF_EN ; 
 int RF_RSTB ; 
 int RF_SDMRSTB ; 
 int _SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int FUNC6 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,scalar_t__,int) ; 

int FUNC10(struct adapter *Adapter)
{
	int	rtStatus = _SUCCESS;
	struct hal_com_data	*pHalData = FUNC0(Adapter);
	u32 RegVal;
	u8 CrystalCap;

	FUNC5(Adapter);

	/*  Enable BB and RF */
	RegVal = FUNC6(Adapter, REG_SYS_FUNC_EN);
	FUNC7(Adapter, REG_SYS_FUNC_EN, (u16)(RegVal|BIT13|BIT0|BIT1));

	FUNC8(Adapter, 0x948, 0x280);	/*  Others use Antenna S1 */

	FUNC9(Adapter, REG_RF_CTRL, RF_EN|RF_RSTB|RF_SDMRSTB);

	FUNC3(1);

	FUNC2(Adapter, ODM_RF_PATH_A, 0x1, 0xfffff, 0x780);

	FUNC9(Adapter, REG_SYS_FUNC_EN, FEN_PPLL|FEN_PCIEA|FEN_DIO_PCIE|FEN_BB_GLB_RSTn|FEN_BBRSTB);

	FUNC9(Adapter, REG_AFE_XTAL_CTRL+1, 0x80);

	/*  */
	/*  Config BB and AGC */
	/*  */
	rtStatus = FUNC4(Adapter);

	/*  0x2C[23:18] = 0x2C[17:12] = CrystalCap */
	CrystalCap = pHalData->CrystalCap & 0x3F;
	FUNC1(Adapter, REG_MAC_PHY_CTRL, 0xFFF000, (CrystalCap | (CrystalCap << 6)));

	return rtStatus;
}