#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
union iwreq_data {int /*<<< orphan*/  name; } ;
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct wlan_bssid_ex {int* rates; scalar_t__ IELength; int /*<<< orphan*/ * IEs; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct wlan_bssid_ex network; } ;
struct mlme_priv {TYPE_1__ cur_network; } ;
struct iw_request_info {int dummy; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int WIFI_ADHOC_MASTER_STATE ; 
 int _FW_LINKED ; 
 int /*<<< orphan*/  _HT_CAPABILITY_IE_ ; 
 int FUNC0 (struct mlme_priv*,int) ; 
 struct _adapter* FUNC1 (struct net_device*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC3 (int*) ; 
 scalar_t__ FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
			     struct iw_request_info *info,
			     union iwreq_data *wrqu, char *extra)
{
	struct _adapter *padapter = FUNC1(dev);
	u32 ht_ielen = 0;
	char *p;
	u8 ht_cap = false;
	struct	mlme_priv	*pmlmepriv = &(padapter->mlmepriv);
	struct wlan_bssid_ex *pcur_bss = &pmlmepriv->cur_network.network;
	u8 *prates;

	if (FUNC0(pmlmepriv, _FW_LINKED | WIFI_ADHOC_MASTER_STATE) ==
	    true) {
		/* parsing HT_CAP_IE */
		p = FUNC2(&pcur_bss->IEs[12], _HT_CAPABILITY_IE_,
				 &ht_ielen, pcur_bss->IELength - 12);
		if (p && ht_ielen > 0)
			ht_cap = true;
		prates = pcur_bss->rates;
		if (FUNC4(prates)) {
			if (ht_cap)
				FUNC5(wrqu->name, IFNAMSIZ,
					 "IEEE 802.11bn");
			else
				FUNC5(wrqu->name, IFNAMSIZ,
					 "IEEE 802.11b");
		} else if (FUNC3(prates)) {
			if (ht_cap)
				FUNC5(wrqu->name, IFNAMSIZ,
					 "IEEE 802.11bgn");
			else
				FUNC5(wrqu->name, IFNAMSIZ,
					 "IEEE 802.11bg");
		} else {
			if (ht_cap)
				FUNC5(wrqu->name, IFNAMSIZ,
					 "IEEE 802.11gn");
			else
				FUNC5(wrqu->name, IFNAMSIZ,
					 "IEEE 802.11g");
		}
	} else {
		FUNC5(wrqu->name, IFNAMSIZ, "unassociated");
	}
	return 0;
}