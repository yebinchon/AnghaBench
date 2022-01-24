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
typedef  int u32 ;
struct fast_ant_train {int /*<<< orphan*/  FAT_State; scalar_t__ TrainIdx; scalar_t__* antAveRSSI; scalar_t__* antRSSIcnt; scalar_t__* antSumRSSI; scalar_t__* Bssid; } ;
struct odm_dm_struct {int* mp_mode; int /*<<< orphan*/  bIsMPChip; struct fast_ant_train DM_FatTable; struct adapter* Adapter; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FAT_NORMAL_STATE ; 
 int bMaskByte0 ; 
 int bMaskByte1 ; 
 int bMaskDWord ; 
 int FUNC1 (struct adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int,int,int) ; 

__attribute__((used)) static void FUNC3(struct odm_dm_struct *dm_odm)
{
	struct adapter *adapter = dm_odm->Adapter;
	u32 value32, i;
	struct fast_ant_train *dm_fat_tbl = &dm_odm->DM_FatTable;

	if (*dm_odm->mp_mode == 1)
		return;

	for (i = 0; i < 6; i++) {
		dm_fat_tbl->Bssid[i] = 0;
		dm_fat_tbl->antSumRSSI[i] = 0;
		dm_fat_tbl->antRSSIcnt[i] = 0;
		dm_fat_tbl->antAveRSSI[i] = 0;
	}
	dm_fat_tbl->TrainIdx = 0;
	dm_fat_tbl->FAT_State = FAT_NORMAL_STATE;

	/* MAC Setting */
	value32 = FUNC1(adapter, 0x4c, bMaskDWord);
	FUNC2(adapter, 0x4c, bMaskDWord,
		       value32 | (FUNC0(23) | FUNC0(25)));
	value32 = FUNC1(adapter,  0x7B4, bMaskDWord);
	FUNC2(adapter, 0x7b4, bMaskDWord,
		       value32 | (FUNC0(16) | FUNC0(17)));

	/* Match MAC ADDR */
	FUNC2(adapter, 0x7b4, 0xFFFF, 0);
	FUNC2(adapter, 0x7b0, bMaskDWord, 0);

	FUNC2(adapter, 0x870, FUNC0(9) | FUNC0(8), 0);
	FUNC2(adapter, 0x864, FUNC0(10), 0);
	FUNC2(adapter, 0xb2c, FUNC0(22), 0);
	FUNC2(adapter, 0xb2c, FUNC0(31), 1);
	FUNC2(adapter, 0xca4, bMaskDWord, 0x000000a0);

	/* antenna mapping table */
	if (!dm_odm->bIsMPChip) { /* testchip */
		FUNC2(adapter, 0x858, FUNC0(10) | FUNC0(9) | FUNC0(8), 1);
		FUNC2(adapter, 0x858, FUNC0(13) | FUNC0(12) | FUNC0(11), 2);
	} else { /* MPchip */
		FUNC2(adapter, 0x914, bMaskByte0, 1);
		FUNC2(adapter, 0x914, bMaskByte1, 2);
	}

	/* Default Ant Setting when no fast training */
	FUNC2(adapter, 0x80c, FUNC0(21), 1);
	FUNC2(adapter, 0x864, FUNC0(5) | FUNC0(4) | FUNC0(3), 0);
	FUNC2(adapter, 0x864, FUNC0(8) | FUNC0(7) | FUNC0(6), 1);

	/* Enter Traing state */
	FUNC2(adapter, 0x864, FUNC0(2) | FUNC0(1) | FUNC0(0), 1);
	FUNC2(adapter, 0xc50, FUNC0(7), 1);
}