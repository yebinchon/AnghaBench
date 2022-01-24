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
struct TYPE_4__ {scalar_t__ DSConfig; } ;
struct wlan_bssid_ex {TYPE_1__ Configuration; } ;
struct mlme_ext_info {int state; int /*<<< orphan*/  bcn_interval; int /*<<< orphan*/  network; } ;
struct mlme_ext_priv {int cur_channel; struct mlme_ext_info mlmext_info; } ;
struct TYPE_5__ {int* MacAddress; } ;
struct TYPE_6__ {TYPE_2__ dev_network; } ;
struct adapter {TYPE_3__ registrypriv; struct mlme_ext_priv mlmeextpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_WIDTH_20 ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned short) ; 
 int /*<<< orphan*/  HAL_PRIME_CHNL_OFFSET_DONT_CARE ; 
 int /*<<< orphan*/  HW_VAR_BSSID ; 
 int /*<<< orphan*/  HW_VAR_DO_IQK ; 
 int /*<<< orphan*/  HW_VAR_MLME_JOIN ; 
 int /*<<< orphan*/  HW_VAR_SEC_CFG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int) ; 
 int WIFI_FW_ADHOC_STATE ; 
 int WIFI_FW_ASSOC_SUCCESS ; 
 int WIFI_FW_NULL_STATE ; 
 scalar_t__ _FAIL ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_rtl871x_mlme_c_ ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 unsigned short cap_IBSS ; 
 int /*<<< orphan*/  FUNC4 (struct wlan_bssid_ex*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int) ; 
 unsigned short FUNC6 (struct wlan_bssid_ex*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*) ; 
 scalar_t__ FUNC9 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,unsigned short) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*) ; 

void FUNC14(struct adapter *padapter)
{
	unsigned short	caps;
	u8 val8;
	u8 join_type;
	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
	struct wlan_bssid_ex		*pnetwork = (struct wlan_bssid_ex *)(&(pmlmeinfo->network));
	pmlmeext->cur_channel = (u8)pnetwork->Configuration.DSConfig;
	pmlmeinfo->bcn_interval = FUNC4(pnetwork);

	/* update wireless mode */
	FUNC13(padapter);

	/* udpate capability */
	caps = FUNC6((struct wlan_bssid_ex *)pnetwork);
	FUNC12(padapter, caps);
	if (caps&cap_IBSS) {/* adhoc master */
		val8 = 0xcf;
		FUNC7(padapter, HW_VAR_SEC_CFG, (u8 *)(&val8));

		FUNC7(padapter, HW_VAR_DO_IQK, NULL);

		/* switch channel */
		/* SelectChannel(padapter, pmlmeext->cur_channel, HAL_PRIME_CHNL_OFFSET_DONT_CARE); */
		FUNC10(padapter, pmlmeext->cur_channel, HAL_PRIME_CHNL_OFFSET_DONT_CARE, CHANNEL_WIDTH_20);

		FUNC3(padapter);

		/* set msr to WIFI_FW_ADHOC_STATE */
		pmlmeinfo->state = WIFI_FW_ADHOC_STATE;
		FUNC2(padapter, (pmlmeinfo->state & 0x3));

		/* issue beacon */
		if (FUNC9(padapter) == _FAIL) {
			FUNC1(_module_rtl871x_mlme_c_, _drv_err_, ("issuing beacon frame fail....\n"));

			FUNC5(padapter, -1);
			pmlmeinfo->state = WIFI_FW_NULL_STATE;
		} else {
			FUNC7(padapter, HW_VAR_BSSID, padapter->registrypriv.dev_network.MacAddress);
			join_type = 0;
			FUNC7(padapter, HW_VAR_MLME_JOIN, (u8 *)(&join_type));

			FUNC5(padapter, 1);
			pmlmeinfo->state |= WIFI_FW_ASSOC_SUCCESS;
			FUNC8(padapter);
		}
	} else {
		FUNC0("start_create_ibss, invalid cap:%x\n", caps);
		return;
	}
	/* update bc/mc sta_info */
	FUNC11(padapter);

}