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
struct TYPE_4__ {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
union iwreq_data {TYPE_2__ ap_addr; } ;
struct wlan_bssid_ex {int /*<<< orphan*/  MacAddress; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct wlan_bssid_ex network; } ;
struct mlme_priv {TYPE_1__ cur_network; } ;
struct iw_request_info {int dummy; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int WIFI_ADHOC_MASTER_STATE ; 
 int WIFI_AP_STATE ; 
 int _FW_LINKED ; 
 scalar_t__ FUNC0 (struct mlme_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct _adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				struct iw_request_info *info,
				union iwreq_data *wrqu, char *extra)
{
	struct _adapter *padapter = FUNC3(dev);
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	struct wlan_bssid_ex *pcur_bss = &pmlmepriv->cur_network.network;

	wrqu->ap_addr.sa_family = ARPHRD_ETHER;
	if (FUNC0(pmlmepriv, _FW_LINKED | WIFI_ADHOC_MASTER_STATE |
				     WIFI_AP_STATE))
		FUNC2(wrqu->ap_addr.sa_data, pcur_bss->MacAddress);
	else
		FUNC1(wrqu->ap_addr.sa_data);
	return 0;
}