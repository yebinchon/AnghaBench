#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  size_t u32 ;
struct sitesurvey_parm {int /*<<< orphan*/  scan_mode; int /*<<< orphan*/  ch_num; int /*<<< orphan*/  ch; TYPE_1__* ssid; } ;
struct TYPE_6__ {scalar_t__ state; int /*<<< orphan*/  scan_mode; int /*<<< orphan*/  ch; int /*<<< orphan*/  ch_num; TYPE_2__* ssid; scalar_t__ channel_idx; scalar_t__ bss_cnt; } ;
struct mlme_ext_priv {TYPE_3__ sitesurvey_res; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;
struct TYPE_5__ {scalar_t__ SsidLength; int /*<<< orphan*/  Ssid; } ;
struct TYPE_4__ {scalar_t__ SsidLength; int /*<<< orphan*/  Ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DYNAMIC_FUNC_DISABLE ; 
 int H2C_SUCCESS ; 
 int /*<<< orphan*/  HW_VAR_INITIAL_GAIN ; 
 int /*<<< orphan*/  HW_VAR_MLME_SITESURVEY ; 
 int /*<<< orphan*/  IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  RTW_CHANNEL_SCAN_AMOUNT ; 
 size_t RTW_SSID_SCAN_AMOUNT ; 
 scalar_t__ SCAN_DISABLE ; 
 scalar_t__ SCAN_PROCESS ; 
 scalar_t__ SCAN_START ; 
 scalar_t__ SCAN_TXNULL ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  _HW_STATE_NOLINK_ ; 
 scalar_t__ FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlme_ext_priv*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*) ; 

u8 FUNC10(struct adapter *padapter, u8 *pbuf)
{
	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
	struct sitesurvey_parm	*pparm = (struct sitesurvey_parm *)pbuf;
	u8 bdelayscan = false;
	u8 val8;
	u32 initialgain;
	u32 i;

	if (pmlmeext->sitesurvey_res.state == SCAN_DISABLE) {
		pmlmeext->sitesurvey_res.state = SCAN_START;
		pmlmeext->sitesurvey_res.bss_cnt = 0;
		pmlmeext->sitesurvey_res.channel_idx = 0;

		for (i = 0; i < RTW_SSID_SCAN_AMOUNT; i++) {
			if (pparm->ssid[i].SsidLength) {
				FUNC5(pmlmeext->sitesurvey_res.ssid[i].Ssid, pparm->ssid[i].Ssid, IW_ESSID_MAX_SIZE);
				pmlmeext->sitesurvey_res.ssid[i].SsidLength = pparm->ssid[i].SsidLength;
			} else {
				pmlmeext->sitesurvey_res.ssid[i].SsidLength = 0;
			}
		}

		pmlmeext->sitesurvey_res.ch_num = FUNC7(padapter
			, pmlmeext->sitesurvey_res.ch, RTW_CHANNEL_SCAN_AMOUNT
			, pparm->ch, pparm->ch_num
		);

		pmlmeext->sitesurvey_res.scan_mode = pparm->scan_mode;

		/* issue null data if associating to the AP */
		if (FUNC3(padapter)) {
			pmlmeext->sitesurvey_res.state = SCAN_TXNULL;

			FUNC4(padapter, NULL, 1, 3, 500);

			bdelayscan = true;
		}
		if (bdelayscan) {
			/* delay 50ms to protect nulldata(1). */
			FUNC8(pmlmeext, 50);
			return H2C_SUCCESS;
		}
	}

	if ((pmlmeext->sitesurvey_res.state == SCAN_START) || (pmlmeext->sitesurvey_res.state == SCAN_TXNULL)) {
		/* disable dynamic functions, such as high power, DIG */
		FUNC0(padapter);
		FUNC2(padapter, DYNAMIC_FUNC_DISABLE, false);

		/* config the initial gain under scaning, need to write the BB registers */
		initialgain = 0x1e;

		FUNC6(padapter, HW_VAR_INITIAL_GAIN, (u8 *)(&initialgain));

		/* set MSR to no link state */
		FUNC1(padapter, _HW_STATE_NOLINK_);

		val8 = 1; /* under site survey */
		FUNC6(padapter, HW_VAR_MLME_SITESURVEY, (u8 *)(&val8));

		pmlmeext->sitesurvey_res.state = SCAN_PROCESS;
	}

	FUNC9(padapter);

	return H2C_SUCCESS;

}