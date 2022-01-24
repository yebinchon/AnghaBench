#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
union iwreq_data {int /*<<< orphan*/  name; } ;
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int DSConfig; } ;
struct wlan_bssid_ex {TYPE_2__ Configuration; int /*<<< orphan*/  SupportedRates; scalar_t__ ie_length; int /*<<< orphan*/ * ies; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct wlan_bssid_ex network; } ;
struct mlme_priv {TYPE_1__ cur_network; } ;
struct iw_request_info {int /*<<< orphan*/  cmd; } ;
struct adapter {struct mlme_priv mlmepriv; } ;
typedef  int /*<<< orphan*/  NDIS_802_11_RATES_EX ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int WIFI_ADHOC_MASTER_STATE ; 
 int _FW_LINKED ; 
 int /*<<< orphan*/  _HT_CAPABILITY_IE_ ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_rtl871x_mlme_c_ ; 
 scalar_t__ FUNC1 (struct mlme_priv*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC3 (int*) ; 
 scalar_t__ FUNC4 (int*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
			     struct iw_request_info *info,
			     union iwreq_data *wrqu, char *extra)
{
	struct adapter *padapter = (struct adapter *)FUNC5(dev);
	u32 ht_ielen = 0;
	char *p;
	u8 ht_cap = false;
	struct	mlme_priv	*pmlmepriv = &(padapter->mlmepriv);
	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;
	NDIS_802_11_RATES_EX *prates = NULL;

	FUNC0(_module_rtl871x_mlme_c_, _drv_info_, ("cmd_code =%x\n", info->cmd));

	if (FUNC1(pmlmepriv, _FW_LINKED | WIFI_ADHOC_MASTER_STATE)) {
		/* parsing HT_CAP_IE */
		p = FUNC2(&pcur_bss->ies[12], _HT_CAPABILITY_IE_, &ht_ielen, pcur_bss->ie_length-12);
		if (p && ht_ielen > 0)
			ht_cap = true;

		prates = &pcur_bss->SupportedRates;

		if (FUNC4((u8 *)prates)) {
			if (ht_cap)
				FUNC6(wrqu->name, IFNAMSIZ, "IEEE 802.11bn");
			else
				FUNC6(wrqu->name, IFNAMSIZ, "IEEE 802.11b");
		} else if (FUNC3((u8 *)prates)) {
			if (ht_cap)
				FUNC6(wrqu->name, IFNAMSIZ, "IEEE 802.11bgn");
			else
				FUNC6(wrqu->name, IFNAMSIZ, "IEEE 802.11bg");
		} else {
			if (pcur_bss->Configuration.DSConfig > 14) {
				if (ht_cap)
					FUNC6(wrqu->name, IFNAMSIZ, "IEEE 802.11an");
				else
					FUNC6(wrqu->name, IFNAMSIZ, "IEEE 802.11a");
			} else {
				if (ht_cap)
					FUNC6(wrqu->name, IFNAMSIZ, "IEEE 802.11gn");
				else
					FUNC6(wrqu->name, IFNAMSIZ, "IEEE 802.11g");
			}
		}
	} else {
		FUNC6(wrqu->name, IFNAMSIZ, "unassociated");
	}
	return 0;
}