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
struct odm_dm_struct {int* mp_mode; int /*<<< orphan*/  bIsMPChip; int /*<<< orphan*/  AntDivType; struct adapter* Adapter; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CGCS_RX_SW_ANTDIV ; 
 int /*<<< orphan*/  MAIN_ANT ; 
 int /*<<< orphan*/  ODM_REG_ANTDIV_PARA1_11N ; 
 int /*<<< orphan*/  ODM_REG_ANTSEL_PIN_11N ; 
 int /*<<< orphan*/  ODM_REG_ANT_MAPPING1_11N ; 
 int /*<<< orphan*/  ODM_REG_BB_PWR_SAV4_11N ; 
 int /*<<< orphan*/  ODM_REG_CCK_ANTDIV_PARA2_11N ; 
 int /*<<< orphan*/  ODM_REG_IGI_A_11N ; 
 int /*<<< orphan*/  ODM_REG_LNA_SWITCH_11N ; 
 int /*<<< orphan*/  ODM_REG_PIN_CTRL_11N ; 
 int /*<<< orphan*/  ODM_REG_RX_ANT_CTRL_11N ; 
 int /*<<< orphan*/  ODM_REG_RX_DEFAULT_A_11N ; 
 int /*<<< orphan*/  ODM_REG_TX_ANT_CTRL_11N ; 
 int bMaskDWord ; 
 int FUNC1 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct odm_dm_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct odm_dm_struct *dm_odm)
{
	struct adapter *adapter = dm_odm->Adapter;
	u32	value32;

	if (*dm_odm->mp_mode == 1) {
		dm_odm->AntDivType = CGCS_RX_SW_ANTDIV;
		FUNC2(adapter, ODM_REG_IGI_A_11N, FUNC0(7), 0);
		FUNC2(adapter, ODM_REG_RX_ANT_CTRL_11N,
			       FUNC0(5) | FUNC0(4) | FUNC0(3), 0);
		return;
	}

	/* MAC Setting */
	value32 = FUNC1(adapter, ODM_REG_ANTSEL_PIN_11N, bMaskDWord);
	FUNC2(adapter, ODM_REG_ANTSEL_PIN_11N, bMaskDWord,
		       value32 | (FUNC0(23) | FUNC0(25)));
	/* Pin Settings */
	FUNC2(adapter, ODM_REG_PIN_CTRL_11N, FUNC0(9) | FUNC0(8), 0);
	FUNC2(adapter, ODM_REG_RX_ANT_CTRL_11N, FUNC0(10), 0);
	FUNC2(adapter, ODM_REG_LNA_SWITCH_11N, FUNC0(22), 0);
	FUNC2(adapter, ODM_REG_LNA_SWITCH_11N, FUNC0(31), 1);
	/* OFDM Settings */
	FUNC2(adapter, ODM_REG_ANTDIV_PARA1_11N, bMaskDWord,
		       0x000000a0);
	/* CCK Settings */
	FUNC2(adapter, ODM_REG_BB_PWR_SAV4_11N, FUNC0(7), 1);
	FUNC2(adapter, ODM_REG_CCK_ANTDIV_PARA2_11N, FUNC0(4), 1);
	/* Tx Settings */
	FUNC2(adapter, ODM_REG_TX_ANT_CTRL_11N, FUNC0(21), 0);
	FUNC3(dm_odm, MAIN_ANT);

	/* antenna mapping table */
	if (!dm_odm->bIsMPChip) { /* testchip */
		FUNC2(adapter, ODM_REG_RX_DEFAULT_A_11N,
			       FUNC0(10) | FUNC0(9) | FUNC0(8), 1);
		FUNC2(adapter, ODM_REG_RX_DEFAULT_A_11N,
			       FUNC0(13) | FUNC0(12) | FUNC0(11), 2);
	} else { /* MPchip */
		FUNC2(adapter, ODM_REG_ANT_MAPPING1_11N, bMaskDWord,
			       0x0201);
	}
}