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
struct hal_data_8188e {int BoardType; } ;
struct adapter {struct hal_data_8188e* HalData; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 size_t EEPROM_RF_BOARD_OPTION_88E ; 

void FUNC1(struct adapter *pAdapter, u8 *hwinfo, bool AutoLoadFail)
{
	struct hal_data_8188e *pHalData = pAdapter->HalData;

	if (!AutoLoadFail)
		pHalData->BoardType = (hwinfo[EEPROM_RF_BOARD_OPTION_88E]
					& 0xE0) >> 5;
	else
		pHalData->BoardType = 0;
	FUNC0("Board Type: 0x%2x\n", pHalData->BoardType);
}