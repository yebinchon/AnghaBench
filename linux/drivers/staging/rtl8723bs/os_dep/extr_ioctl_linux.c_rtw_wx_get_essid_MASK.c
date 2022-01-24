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
struct TYPE_6__ {int length; int flags; } ;
union iwreq_data {TYPE_3__ essid; } ;
typedef  int u32 ;
struct TYPE_5__ {int SsidLength; int /*<<< orphan*/  Ssid; } ;
struct wlan_bssid_ex {TYPE_2__ Ssid; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct wlan_bssid_ex network; } ;
struct mlme_priv {TYPE_1__ cur_network; } ;
struct iw_request_info {int dummy; } ;
struct adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WIFI_ADHOC_MASTER_STATE ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_rtl871x_mlme_c_ ; 
 int FUNC1 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			      struct iw_request_info *a,
			      union iwreq_data *wrqu, char *extra)
{
	u32 len, ret = 0;
	struct adapter *padapter = (struct adapter *)FUNC3(dev);
	struct	mlme_priv *pmlmepriv = &(padapter->mlmepriv);
	struct wlan_bssid_ex  *pcur_bss = &pmlmepriv->cur_network.network;

	FUNC0(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_essid\n"));

	if ((FUNC1(pmlmepriv, _FW_LINKED) == true) ||
	      (FUNC1(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true)) {
		len = pcur_bss->Ssid.SsidLength;

		wrqu->essid.length = len;

		FUNC2(extra, pcur_bss->Ssid.Ssid, len);

		wrqu->essid.flags = 1;
	} else {
		ret = -1;
		goto exit;
	}

exit:
	return ret;
}