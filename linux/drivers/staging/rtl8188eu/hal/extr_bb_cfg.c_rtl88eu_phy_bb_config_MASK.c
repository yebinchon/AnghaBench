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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_2__ {int CrystalCap; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FEN_BBRSTB ; 
 int FEN_BB_GLB_RSTn ; 
 int FEN_USBA ; 
 int FEN_USBD ; 
 int /*<<< orphan*/  REG_AFE_XTAL_CTRL ; 
 int /*<<< orphan*/  REG_RF_CTRL ; 
 int /*<<< orphan*/  REG_SYS_FUNC_EN ; 
 int RF_EN ; 
 int RF_RSTB ; 
 int RF_SDMRSTB ; 
 int FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int) ; 

bool FUNC7(struct adapter *adapt)
{
	bool rtstatus;
	u32 regval;
	u8 crystal_cap;

	FUNC3(adapt);

	/*  Enable BB and RF */
	regval = FUNC4(adapt, REG_SYS_FUNC_EN);
	FUNC5(adapt, REG_SYS_FUNC_EN,
		    (u16)(regval | FUNC0(13) | FUNC0(0) | FUNC0(1)));

	FUNC6(adapt, REG_RF_CTRL, RF_EN | RF_RSTB | RF_SDMRSTB);

	FUNC6(adapt, REG_SYS_FUNC_EN, FEN_USBA |
		   FEN_USBD | FEN_BB_GLB_RSTn | FEN_BBRSTB);

	/*  Config BB and AGC */
	rtstatus = FUNC1(adapt);

	/*  write 0x24[16:11] = 0x24[22:17] = crystal_cap */
	crystal_cap = adapt->HalData->CrystalCap & 0x3F;
	FUNC2(adapt, REG_AFE_XTAL_CTRL, 0x7ff800,
		       (crystal_cap | (crystal_cap << 6)));

	return rtstatus;
}