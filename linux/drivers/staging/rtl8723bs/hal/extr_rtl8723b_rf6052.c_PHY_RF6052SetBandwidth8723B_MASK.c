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
struct hal_com_data {int* RfRegChnlVal; } ;
struct adapter {int dummy; } ;
typedef  enum CHANNEL_WIDTH { ____Placeholder_CHANNEL_WIDTH } CHANNEL_WIDTH ;

/* Variables and functions */
 int BIT10 ; 
 int BIT11 ; 
#define  CHANNEL_WIDTH_20 129 
#define  CHANNEL_WIDTH_40 128 
 struct hal_com_data* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  ODM_RF_PATH_A ; 
 int /*<<< orphan*/  ODM_RF_PATH_B ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RF_CHNLBW ; 
 int /*<<< orphan*/  bRFRegOffsetMask ; 

void FUNC2(
	struct adapter *Adapter, enum CHANNEL_WIDTH Bandwidth
) /* 20M or 40M */
{
	struct hal_com_data *pHalData = FUNC0(Adapter);

	switch (Bandwidth) {
	case CHANNEL_WIDTH_20:
		pHalData->RfRegChnlVal[0] = ((pHalData->RfRegChnlVal[0] & 0xfffff3ff) | BIT10 | BIT11);
		FUNC1(Adapter, ODM_RF_PATH_A, RF_CHNLBW, bRFRegOffsetMask, pHalData->RfRegChnlVal[0]);
		FUNC1(Adapter, ODM_RF_PATH_B, RF_CHNLBW, bRFRegOffsetMask, pHalData->RfRegChnlVal[0]);
		break;

	case CHANNEL_WIDTH_40:
		pHalData->RfRegChnlVal[0] = ((pHalData->RfRegChnlVal[0] & 0xfffff3ff) | BIT10);
		FUNC1(Adapter, ODM_RF_PATH_A, RF_CHNLBW, bRFRegOffsetMask, pHalData->RfRegChnlVal[0]);
		FUNC1(Adapter, ODM_RF_PATH_B, RF_CHNLBW, bRFRegOffsetMask, pHalData->RfRegChnlVal[0]);
		break;

	default:
		/* RT_TRACE(COMP_DBG, DBG_LOUD, ("PHY_SetRF8225Bandwidth(): unknown Bandwidth: %#X\n", Bandwidth)); */
		break;
	}

}