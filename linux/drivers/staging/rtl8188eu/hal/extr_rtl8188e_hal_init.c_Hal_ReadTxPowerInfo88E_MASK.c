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
typedef  size_t u8 ;
struct txpowerinfo24g {int /*<<< orphan*/ ** BW40_Diff; int /*<<< orphan*/ ** BW20_Diff; int /*<<< orphan*/ ** OFDM_Diff; int /*<<< orphan*/ ** CCK_Diff; int /*<<< orphan*/ ** IndexBW40_Base; int /*<<< orphan*/ ** IndexCCK_Base; } ;
struct hal_data_8188e {int bTXPowerDataReadFromEEPORM; size_t EEPROMRegulatory; int /*<<< orphan*/ ** BW40_24G_Diff; int /*<<< orphan*/ ** BW20_24G_Diff; int /*<<< orphan*/ ** OFDM_24G_Diff; int /*<<< orphan*/ ** CCK_24G_Diff; int /*<<< orphan*/ ** Index24G_BW40_Base; int /*<<< orphan*/ ** Index24G_CCK_Base; } ;
struct adapter {struct hal_data_8188e* HalData; } ;

/* Variables and functions */
 size_t CHANNEL_MAX_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,...) ; 
 int EEPROM_DEFAULT_BOARD_OPTION ; 
 size_t EEPROM_RF_BOARD_OPTION_88E ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct txpowerinfo24g*,size_t*,int) ; 
 size_t MAX_TX_COUNT ; 

void FUNC3(struct adapter *padapter, u8 *PROMContent, bool AutoLoadFail)
{
	struct hal_data_8188e *pHalData = padapter->HalData;
	struct txpowerinfo24g pwrInfo24G;
	u8 ch, group;
	u8 TxCount;

	FUNC2(&pwrInfo24G, PROMContent, AutoLoadFail);

	if (!AutoLoadFail)
		pHalData->bTXPowerDataReadFromEEPORM = true;

	for (ch = 0; ch < CHANNEL_MAX_NUMBER; ch++) {
		FUNC1(ch, &group);
		pHalData->Index24G_CCK_Base[0][ch] = pwrInfo24G.IndexCCK_Base[0][group];
		if (ch == 14)
			pHalData->Index24G_BW40_Base[0][ch] = pwrInfo24G.IndexBW40_Base[0][4];
		else
			pHalData->Index24G_BW40_Base[0][ch] = pwrInfo24G.IndexBW40_Base[0][group];

		FUNC0("======= Path %d, Channel %d =======\n", 0, ch);
		FUNC0("Index24G_CCK_Base[%d][%d] = 0x%x\n", 0, ch, pHalData->Index24G_CCK_Base[0][ch]);
		FUNC0("Index24G_BW40_Base[%d][%d] = 0x%x\n", 0, ch, pHalData->Index24G_BW40_Base[0][ch]);
	}
	for (TxCount = 0; TxCount < MAX_TX_COUNT; TxCount++) {
		pHalData->CCK_24G_Diff[0][TxCount] = pwrInfo24G.CCK_Diff[0][TxCount];
		pHalData->OFDM_24G_Diff[0][TxCount] = pwrInfo24G.OFDM_Diff[0][TxCount];
		pHalData->BW20_24G_Diff[0][TxCount] = pwrInfo24G.BW20_Diff[0][TxCount];
		pHalData->BW40_24G_Diff[0][TxCount] = pwrInfo24G.BW40_Diff[0][TxCount];
		FUNC0("======= TxCount %d =======\n", TxCount);
		FUNC0("CCK_24G_Diff[%d][%d] = %d\n", 0, TxCount, pHalData->CCK_24G_Diff[0][TxCount]);
		FUNC0("OFDM_24G_Diff[%d][%d] = %d\n", 0, TxCount, pHalData->OFDM_24G_Diff[0][TxCount]);
		FUNC0("BW20_24G_Diff[%d][%d] = %d\n", 0, TxCount, pHalData->BW20_24G_Diff[0][TxCount]);
		FUNC0("BW40_24G_Diff[%d][%d] = %d\n", 0, TxCount, pHalData->BW40_24G_Diff[0][TxCount]);
	}

	/*  2010/10/19 MH Add Regulator recognize for CU. */
	if (!AutoLoadFail) {
		pHalData->EEPROMRegulatory = (PROMContent[EEPROM_RF_BOARD_OPTION_88E]&0x7);	/* bit0~2 */
		if (PROMContent[EEPROM_RF_BOARD_OPTION_88E] == 0xFF)
			pHalData->EEPROMRegulatory = (EEPROM_DEFAULT_BOARD_OPTION&0x7);	/* bit0~2 */
	} else {
		pHalData->EEPROMRegulatory = 0;
	}
	FUNC0("EEPROMRegulatory = 0x%x\n", pHalData->EEPROMRegulatory);
}