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
struct wlan_bssid_ex {int /*<<< orphan*/  MacAddress; } ;
struct mlme_ext_info {int state; int /*<<< orphan*/  network; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct disconnect_parm {int deauth_timeout_ms; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;

/* Variables and functions */
 scalar_t__ H2C_SUCCESS ; 
 int /*<<< orphan*/  HW_VAR_BCN_FUNC ; 
 int WIFI_FW_ADHOC_STATE ; 
 int WIFI_FW_AP_STATE ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 scalar_t__ FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 

u8 FUNC5(struct adapter *padapter, unsigned char *pbuf)
{
	struct disconnect_parm *param = (struct disconnect_parm *)pbuf;
	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
	struct wlan_bssid_ex		*pnetwork = (struct wlan_bssid_ex *)(&(pmlmeinfo->network));
	u8 val8;

	if (FUNC0(padapter)) {
			FUNC1(padapter, pnetwork->MacAddress, WLAN_REASON_DEAUTH_LEAVING, param->deauth_timeout_ms/100, 100);
	}

	if (((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) || ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE)) {
		/* Stop BCN */
		val8 = 0;
		FUNC3(padapter, HW_VAR_BCN_FUNC, (u8 *)(&val8));
	}

	FUNC4(padapter);

	FUNC2(padapter);

	return	H2C_SUCCESS;
}