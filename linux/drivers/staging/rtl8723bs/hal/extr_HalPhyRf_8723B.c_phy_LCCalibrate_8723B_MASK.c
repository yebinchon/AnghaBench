#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct adapter {int dummy; } ;
struct TYPE_3__ {scalar_t__ SupportInterface; int PackageType; struct adapter* Adapter; } ;
typedef  TYPE_1__* PDM_ODM_T ;

/* Variables and functions */
 scalar_t__ ODM_ITRF_SDIO ; 
 int /*<<< orphan*/  ODM_RF_PATH_A ; 
 int /*<<< orphan*/  ODM_RF_PATH_B ; 
 int FUNC0 (struct adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int REG_TXPAUSE ; 
 int RF_AC ; 
 int RF_CHNLBW ; 
 int /*<<< orphan*/  bMask12Bits ; 
 int /*<<< orphan*/  bRFRegOffsetMask ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int,int) ; 

__attribute__((used)) static void FUNC5(PDM_ODM_T pDM_Odm, bool is2T)
{
	u8 tmpReg;
	u32 RF_Amode = 0, RF_Bmode = 0, LC_Cal;
	struct adapter *padapter = pDM_Odm->Adapter;

	/* Check continuous TX and Packet TX */
	tmpReg = FUNC3(pDM_Odm->Adapter, 0xd03);

	if ((tmpReg&0x70) != 0)			/* Deal with contisuous TX case */
		FUNC4(pDM_Odm->Adapter, 0xd03, tmpReg&0x8F);	/* disable all continuous TX */
	else							/*  Deal with Packet TX case */
		FUNC4(pDM_Odm->Adapter, REG_TXPAUSE, 0xFF);		/*  block all queues */

	if ((tmpReg&0x70) != 0) {
		/* 1. Read original RF mode */
		/* Path-A */
		RF_Amode = FUNC0(padapter, ODM_RF_PATH_A, RF_AC, bMask12Bits);

		/* Path-B */
		if (is2T)
			RF_Bmode = FUNC0(padapter, ODM_RF_PATH_B, RF_AC, bMask12Bits);

		/* 2. Set RF mode = standby mode */
		/* Path-A */
		FUNC1(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_AC, bMask12Bits, (RF_Amode&0x8FFFF)|0x10000);

		/* Path-B */
		if (is2T)
			FUNC1(pDM_Odm->Adapter, ODM_RF_PATH_B, RF_AC, bMask12Bits, (RF_Bmode&0x8FFFF)|0x10000);
	}

	/* 3. Read RF reg18 */
	LC_Cal = FUNC0(padapter, ODM_RF_PATH_A, RF_CHNLBW, bMask12Bits);

	/* 4. Set LC calibration begin	bit15 */
	FUNC1(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xB0, bRFRegOffsetMask, 0xDFBE0); /*  LDO ON */
	FUNC1(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_CHNLBW, bMask12Bits, LC_Cal|0x08000);

	FUNC2(100);

	FUNC1(pDM_Odm->Adapter, ODM_RF_PATH_A, 0xB0, bRFRegOffsetMask, 0xDFFE0); /*  LDO OFF */

	/*  Channel 10 LC calibration issue for 8723bs with 26M xtal */
	if (pDM_Odm->SupportInterface == ODM_ITRF_SDIO && pDM_Odm->PackageType >= 0x2) {
		FUNC1(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_CHNLBW, bMask12Bits, LC_Cal);
	}

	/* Restore original situation */
	if ((tmpReg&0x70) != 0) { /* Deal with contisuous TX case */
		/* Path-A */
		FUNC4(pDM_Odm->Adapter, 0xd03, tmpReg);
		FUNC1(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_AC, bMask12Bits, RF_Amode);

		/* Path-B */
		if (is2T)
			FUNC1(pDM_Odm->Adapter, ODM_RF_PATH_B, RF_AC, bMask12Bits, RF_Bmode);
	} else /*  Deal with Packet TX case */
		FUNC4(pDM_Odm->Adapter, REG_TXPAUSE, 0x00);
}