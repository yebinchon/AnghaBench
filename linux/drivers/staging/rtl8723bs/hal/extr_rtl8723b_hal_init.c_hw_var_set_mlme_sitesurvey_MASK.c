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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct mlme_priv {int dummy; } ;
struct hal_com_data {int RegRRSR; } ;
struct adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 scalar_t__ DIS_TSF_UDT ; 
 struct hal_com_data* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  RCR_CBSSID_BCN ; 
 int /*<<< orphan*/  REG_BCN_CTRL ; 
 int /*<<< orphan*/  REG_RCR ; 
 int /*<<< orphan*/  REG_RRSR ; 
 int /*<<< orphan*/  REG_RXFLTMAP2 ; 
 int WIFI_ADHOC_MASTER_STATE ; 
 int WIFI_ADHOC_STATE ; 
 int WIFI_AP_STATE ; 
 int WIFI_STATION_STATE ; 
 int _FW_LINKED ; 
 int FUNC1 (struct mlme_priv*,int) ; 
 int FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct adapter *padapter, u8 variable, u8 *val)
{
	u32 value_rcr, rcr_clear_bit, reg_bcn_ctl;
	u16 value_rxfltmap2;
	u8 val8;
	struct hal_com_data *pHalData;
	struct mlme_priv *pmlmepriv;


	pHalData = FUNC0(padapter);
	pmlmepriv = &padapter->mlmepriv;

	reg_bcn_ctl = REG_BCN_CTRL;

	rcr_clear_bit = RCR_CBSSID_BCN;

	/*  config RCR to receive different BSSID & not to receive data frame */
	value_rxfltmap2 = 0;

	if ((FUNC1(pmlmepriv, WIFI_AP_STATE) == true))
		rcr_clear_bit = RCR_CBSSID_BCN;

	value_rcr = FUNC3(padapter, REG_RCR);

	if (*((u8 *)val)) {
		/*  under sitesurvey */
		value_rcr &= ~(rcr_clear_bit);
		FUNC6(padapter, REG_RCR, value_rcr);

		FUNC5(padapter, REG_RXFLTMAP2, value_rxfltmap2);

		if (FUNC1(pmlmepriv, WIFI_STATION_STATE | WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE)) {
			/*  disable update TSF */
			val8 = FUNC4(padapter, reg_bcn_ctl);
			val8 |= DIS_TSF_UDT;
			FUNC7(padapter, reg_bcn_ctl, val8);
		}

		/*  Save orignal RRSR setting. */
		pHalData->RegRRSR = FUNC2(padapter, REG_RRSR);
	} else {
		/*  sitesurvey done */
		if (FUNC1(pmlmepriv, (_FW_LINKED|WIFI_AP_STATE)))
			/*  enable to rx data frame */
			FUNC5(padapter, REG_RXFLTMAP2, 0xFFFF);

		if (FUNC1(pmlmepriv, WIFI_STATION_STATE | WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE)) {
			/*  enable update TSF */
			val8 = FUNC4(padapter, reg_bcn_ctl);
			val8 &= ~DIS_TSF_UDT;
			FUNC7(padapter, reg_bcn_ctl, val8);
		}

		value_rcr |= rcr_clear_bit;
		FUNC6(padapter, REG_RCR, value_rcr);

		/*  Restore orignal RRSR setting. */
		FUNC5(padapter, REG_RRSR, pHalData->RegRRSR);
	}
}