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
struct hal_com_data {scalar_t__ rf_tx_pwr_lmt; scalar_t__ rf_tx_pwr_track; scalar_t__ rf_radio_b; scalar_t__ rf_radio_a; scalar_t__ bb_phy_reg_mp; scalar_t__ bb_phy_reg_pg; scalar_t__ bb_agc_tab; scalar_t__ bb_phy_reg; scalar_t__ mac_reg; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 struct hal_com_data* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2(struct adapter *padapter)
{
	struct hal_com_data		*pHalData = FUNC0(padapter);

	if (pHalData->mac_reg)
		FUNC1(pHalData->mac_reg);
	if (pHalData->bb_phy_reg)
		FUNC1(pHalData->bb_phy_reg);
	if (pHalData->bb_agc_tab)
		FUNC1(pHalData->bb_agc_tab);
	if (pHalData->bb_phy_reg_pg)
		FUNC1(pHalData->bb_phy_reg_pg);
	if (pHalData->bb_phy_reg_mp)
		FUNC1(pHalData->bb_phy_reg_mp);
	if (pHalData->rf_radio_a)
		FUNC1(pHalData->rf_radio_a);
	if (pHalData->rf_radio_b)
		FUNC1(pHalData->rf_radio_b);
	if (pHalData->rf_tx_pwr_track)
		FUNC1(pHalData->rf_tx_pwr_track);
	if (pHalData->rf_tx_pwr_lmt)
		FUNC1(pHalData->rf_tx_pwr_lmt);

}