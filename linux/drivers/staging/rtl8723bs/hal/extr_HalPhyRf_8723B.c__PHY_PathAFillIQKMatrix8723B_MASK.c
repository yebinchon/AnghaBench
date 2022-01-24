#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_4__ {int*** TxIQC_8723B; int*** RxIQC_8723B; } ;
struct TYPE_5__ {int /*<<< orphan*/  Adapter; TYPE_1__ RFCalibrateInfo; } ;
struct hal_com_data {TYPE_2__ odmpriv; } ;
struct adapter {int dummy; } ;
typedef  int s32 ;
typedef  TYPE_1__* PODM_RF_CAL_T ;
typedef  TYPE_2__* PDM_ODM_T ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct hal_com_data* FUNC1 (struct adapter*) ; 
 size_t IDX_0xC14 ; 
 size_t IDX_0xC4C ; 
 size_t IDX_0xC80 ; 
 size_t IDX_0xC94 ; 
 size_t IDX_0xCA0 ; 
 size_t KEY ; 
 int /*<<< orphan*/  ODM_COMP_CALIBRATION ; 
 int /*<<< orphan*/  ODM_DBG_LOUD ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 size_t PATH_S1 ; 
 int FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int,int) ; 
 size_t VAL ; 
 int /*<<< orphan*/  bMaskDWord ; 
 void* rOFDM0_ECCAThreshold ; 
 void* rOFDM0_RxIQExtAnta ; 
 void* rOFDM0_XARxIQImbalance ; 
 void* rOFDM0_XATxIQImbalance ; 
 void* rOFDM0_XCTxAFE ; 

__attribute__((used)) static void FUNC5(
	struct adapter *padapter,
	bool bIQKOK,
	s32 result[][8],
	u8 final_candidate,
	bool bTxOnly
)
{
	u32 Oldval_0, X, TX0_A, reg;
	s32 Y, TX0_C;
	struct hal_com_data	*pHalData = FUNC1(padapter);
	PDM_ODM_T pDM_Odm = &pHalData->odmpriv;

	PODM_RF_CAL_T pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);

	FUNC2(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("Path A IQ Calibration %s !\n", (bIQKOK)?"Success":"Failed"));

	if (final_candidate == 0xFF)
		return;

	else if (bIQKOK) {
		Oldval_0 = (FUNC3(pDM_Odm->Adapter, rOFDM0_XATxIQImbalance, bMaskDWord) >> 22) & 0x3FF;

		X = result[final_candidate][0];
		if ((X & 0x00000200) != 0)
			X = X | 0xFFFFFC00;
		TX0_A = (X * Oldval_0) >> 8;
		FUNC2(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("X = 0x%x, TX0_A = 0x%x, Oldval_0 0x%x\n", X, TX0_A, Oldval_0));
		FUNC4(pDM_Odm->Adapter, rOFDM0_XATxIQImbalance, 0x3FF, TX0_A);

		FUNC4(pDM_Odm->Adapter, rOFDM0_ECCAThreshold, FUNC0(31), ((X*Oldval_0>>7) & 0x1));

		Y = result[final_candidate][1];
		if ((Y & 0x00000200) != 0)
			Y = Y | 0xFFFFFC00;

		/* 2 Tx IQC */
		TX0_C = (Y * Oldval_0) >> 8;
		FUNC2(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("Y = 0x%x, TX = 0x%x\n", Y, TX0_C));
		FUNC4(pDM_Odm->Adapter, rOFDM0_XCTxAFE, 0xF0000000, ((TX0_C&0x3C0)>>6));
		pRFCalibrateInfo->TxIQC_8723B[PATH_S1][IDX_0xC94][KEY] = rOFDM0_XCTxAFE;
		pRFCalibrateInfo->TxIQC_8723B[PATH_S1][IDX_0xC94][VAL] = FUNC3(pDM_Odm->Adapter, rOFDM0_XCTxAFE, bMaskDWord);

		FUNC4(pDM_Odm->Adapter, rOFDM0_XATxIQImbalance, 0x003F0000, (TX0_C&0x3F));
		pRFCalibrateInfo->TxIQC_8723B[PATH_S1][IDX_0xC80][KEY] = rOFDM0_XATxIQImbalance;
		pRFCalibrateInfo->TxIQC_8723B[PATH_S1][IDX_0xC80][VAL] = FUNC3(pDM_Odm->Adapter, rOFDM0_XATxIQImbalance, bMaskDWord);

		FUNC4(pDM_Odm->Adapter, rOFDM0_ECCAThreshold, FUNC0(29), ((Y*Oldval_0>>7) & 0x1));
		pRFCalibrateInfo->TxIQC_8723B[PATH_S1][IDX_0xC4C][KEY] = rOFDM0_ECCAThreshold;
		pRFCalibrateInfo->TxIQC_8723B[PATH_S1][IDX_0xC4C][VAL] = FUNC3(pDM_Odm->Adapter, rOFDM0_ECCAThreshold, bMaskDWord);

		if (bTxOnly) {
			FUNC2(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD,  ("_PHY_PathAFillIQKMatrix8723B only Tx OK\n"));

			/*  <20130226, Kordan> Saving RxIQC, otherwise not initialized. */
			pRFCalibrateInfo->RxIQC_8723B[PATH_S1][IDX_0xCA0][KEY] = rOFDM0_RxIQExtAnta;
			pRFCalibrateInfo->RxIQC_8723B[PATH_S1][IDX_0xCA0][VAL] = 0xfffffff & FUNC3(pDM_Odm->Adapter, rOFDM0_RxIQExtAnta, bMaskDWord);
			pRFCalibrateInfo->RxIQC_8723B[PATH_S1][IDX_0xC14][KEY] = rOFDM0_XARxIQImbalance;
/* 			pRFCalibrateInfo->RxIQC_8723B[PATH_S1][IDX_0xC14][VAL] = PHY_QueryBBReg(pDM_Odm->Adapter, rOFDM0_XARxIQImbalance, bMaskDWord); */
			pRFCalibrateInfo->RxIQC_8723B[PATH_S1][IDX_0xC14][VAL] = 0x40000100;
			return;
		}

		reg = result[final_candidate][2];

		/* 2 Rx IQC */
		FUNC4(pDM_Odm->Adapter, rOFDM0_XARxIQImbalance, 0x3FF, reg);
		reg = result[final_candidate][3] & 0x3F;
		FUNC4(pDM_Odm->Adapter, rOFDM0_XARxIQImbalance, 0xFC00, reg);
		pRFCalibrateInfo->RxIQC_8723B[PATH_S1][IDX_0xC14][KEY] = rOFDM0_XARxIQImbalance;
		pRFCalibrateInfo->RxIQC_8723B[PATH_S1][IDX_0xC14][VAL] = FUNC3(pDM_Odm->Adapter, rOFDM0_XARxIQImbalance, bMaskDWord);

		reg = (result[final_candidate][3] >> 6) & 0xF;
		FUNC4(pDM_Odm->Adapter, rOFDM0_RxIQExtAnta, 0xF0000000, reg);
		pRFCalibrateInfo->RxIQC_8723B[PATH_S1][IDX_0xCA0][KEY] = rOFDM0_RxIQExtAnta;
		pRFCalibrateInfo->RxIQC_8723B[PATH_S1][IDX_0xCA0][VAL] = FUNC3(pDM_Odm->Adapter, rOFDM0_RxIQExtAnta, bMaskDWord);

	}
}