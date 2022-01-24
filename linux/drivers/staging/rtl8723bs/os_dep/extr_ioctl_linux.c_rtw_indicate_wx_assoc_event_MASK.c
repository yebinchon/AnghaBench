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
struct TYPE_4__ {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct wlan_bssid_ex {int /*<<< orphan*/  MacAddress; } ;
struct TYPE_5__ {int /*<<< orphan*/  MacAddress; } ;
struct TYPE_6__ {TYPE_2__ network; } ;
struct mlme_priv {TYPE_3__ cur_network; } ;
struct mlme_ext_info {int /*<<< orphan*/  network; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  WIFI_ADHOC_MASTER_STATE ; 
 int /*<<< orphan*/  _drv_always_ ; 
 int FUNC1 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union iwreq_data*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct adapter *padapter)
{
	union iwreq_data wrqu;
	struct	mlme_priv *pmlmepriv = &padapter->mlmepriv;
	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
	struct wlan_bssid_ex		*pnetwork = (struct wlan_bssid_ex *)(&(pmlmeinfo->network));

	FUNC3(&wrqu, 0, sizeof(union iwreq_data));

	wrqu.ap_addr.sa_family = ARPHRD_ETHER;

	if (FUNC1(pmlmepriv, WIFI_ADHOC_MASTER_STATE) ==true)
		FUNC2(wrqu.ap_addr.sa_data, pnetwork->MacAddress, ETH_ALEN);
	else
		FUNC2(wrqu.ap_addr.sa_data, pmlmepriv->cur_network.network.MacAddress, ETH_ALEN);

	FUNC0(_drv_always_, "assoc success\n");
}