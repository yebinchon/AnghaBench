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
struct TYPE_2__ {int InfrastructureMode; } ;
struct wlan_network {TYPE_1__ network; } ;
struct mlme_priv {int /*<<< orphan*/  lock; struct wlan_network cur_network; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;
typedef  enum NDIS_802_11_NETWORK_INFRASTRUCTURE { ____Placeholder_NDIS_802_11_NETWORK_INFRASTRUCTURE } NDIS_802_11_NETWORK_INFRASTRUCTURE ;

/* Variables and functions */
#define  Ndis802_11APMode 132 
#define  Ndis802_11AutoUnknown 131 
#define  Ndis802_11IBSS 130 
#define  Ndis802_11Infrastructure 129 
#define  Ndis802_11InfrastructureMax 128 
 int WIFI_ADHOC_MASTER_STATE ; 
 int WIFI_ADHOC_STATE ; 
 int WIFI_AP_STATE ; 
 int WIFI_STATION_STATE ; 
 int _FW_LINKED ; 
 int /*<<< orphan*/  FUNC0 (struct mlme_priv*,int) ; 
 scalar_t__ FUNC1 (struct mlme_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlme_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC8(struct _adapter *padapter,
	enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype)
{
	unsigned long irqL;
	struct mlme_priv	*pmlmepriv = &padapter->mlmepriv;
	struct wlan_network	*cur_network = &pmlmepriv->cur_network;
	enum NDIS_802_11_NETWORK_INFRASTRUCTURE *pold_state =
				&(cur_network->network.InfrastructureMode);

	if (*pold_state != networktype) {
		FUNC6(&pmlmepriv->lock, irqL);
		if (FUNC1(pmlmepriv, _FW_LINKED) ||
		    (*pold_state == Ndis802_11IBSS))
			FUNC2(padapter);
		if (FUNC1(pmlmepriv,
		    _FW_LINKED | WIFI_ADHOC_MASTER_STATE))
			FUNC3(padapter);
		if (FUNC1(pmlmepriv, _FW_LINKED) ||
		    (*pold_state == Ndis802_11Infrastructure) ||
		    (*pold_state == Ndis802_11IBSS)) {
			/* will clr Linked_state before this function,
			 * we must have checked whether issue dis-assoc_cmd or
			 * not
			 */
			FUNC4(padapter);
		}
		*pold_state = networktype;
		/* clear WIFI_STATION_STATE; WIFI_AP_STATE; WIFI_ADHOC_STATE;
		 * WIFI_ADHOC_MASTER_STATE
		 */
		FUNC0(pmlmepriv, WIFI_STATION_STATE | WIFI_AP_STATE |
			      WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE);
		switch (networktype) {
		case Ndis802_11IBSS:
			FUNC5(pmlmepriv, WIFI_ADHOC_STATE);
			break;
		case Ndis802_11Infrastructure:
			FUNC5(pmlmepriv, WIFI_STATION_STATE);
			break;
		case Ndis802_11APMode:
			FUNC5(pmlmepriv, WIFI_AP_STATE);
			break;
		case Ndis802_11AutoUnknown:
		case Ndis802_11InfrastructureMax:
			break;
		}
		FUNC7(&pmlmepriv->lock, irqL);
	}
}