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
struct mlme_priv {int dummy; } ;
struct adapter {struct mlme_priv mlmepriv; } ;
typedef  int sint ;
typedef  enum NDIS_802_11_NETWORK_INFRASTRUCTURE { ____Placeholder_NDIS_802_11_NETWORK_INFRASTRUCTURE } NDIS_802_11_NETWORK_INFRASTRUCTURE ;

/* Variables and functions */
 int Ndis802_11APMode ; 
 int Ndis802_11IBSS ; 
 int Ndis802_11Infrastructure ; 
 int Ndis802_11InfrastructureMax ; 
 int WIFI_ADHOC_STATE ; 
 int WIFI_AP_STATE ; 
 int WIFI_STATION_STATE ; 
 int FUNC0 (struct mlme_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int,int) ; 

__attribute__((used)) static void FUNC2(struct adapter *padapter)
{
	enum NDIS_802_11_NETWORK_INFRASTRUCTURE networkType = Ndis802_11InfrastructureMax;
	struct  mlme_priv *pmlmepriv = &(padapter->mlmepriv);
	sint fw_state;

	fw_state = FUNC0(pmlmepriv);

	if (fw_state & WIFI_ADHOC_STATE)
		networkType = Ndis802_11IBSS;
	else if (fw_state & WIFI_STATION_STATE)
		networkType = Ndis802_11Infrastructure;
	else if (fw_state & WIFI_AP_STATE)
		networkType = Ndis802_11APMode;
	else
		return;

	FUNC1(padapter, networkType, false);
}