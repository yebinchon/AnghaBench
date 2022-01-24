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
typedef  int /*<<< orphan*/  u8 ;
struct hal_com_data {scalar_t__ CurrentBandType; int NumTotalRFPath; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAND_ON_2_4G ; 
 int /*<<< orphan*/  CCK ; 
 struct hal_com_data* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  HT_MCS0_MCS7 ; 
 int /*<<< orphan*/  HT_MCS8_MCS15 ; 
 int /*<<< orphan*/  OFDM ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct adapter *Adapter, u8 channel, u8 path)
{
	struct hal_com_data *pHalData = FUNC0(Adapter);
	bool bIsIn24G = (pHalData->CurrentBandType == BAND_ON_2_4G);

	/* if (pMgntInfo->RegNByteAccess == 0) */
	{
		if (bIsIn24G)
			FUNC1(Adapter, path, channel, CCK);

		FUNC1(Adapter, path, channel, OFDM);
		FUNC1(Adapter, path, channel, HT_MCS0_MCS7);

		if (pHalData->NumTotalRFPath >= 2)
			FUNC1(Adapter, path, channel, HT_MCS8_MCS15);

	}
}