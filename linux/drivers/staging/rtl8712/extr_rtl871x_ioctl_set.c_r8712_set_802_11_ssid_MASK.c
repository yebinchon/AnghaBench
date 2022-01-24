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
struct wlan_network {int dummy; } ;
struct ndis_802_11_ssid {int /*<<< orphan*/  SsidLength; int /*<<< orphan*/  Ssid; } ;
struct TYPE_4__ {int /*<<< orphan*/  Ssid; int /*<<< orphan*/  SsidLength; } ;
struct mlme_priv {int assoc_by_bssid; int /*<<< orphan*/  lock; TYPE_2__ assoc_ssid; struct wlan_network cur_network; } ;
struct TYPE_3__ {scalar_t__ btkip_countermeasure; } ;
struct _adapter {TYPE_1__ securitypriv; int /*<<< orphan*/  hw_init_completed; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int WIFI_ADHOC_MASTER_STATE ; 
 int /*<<< orphan*/  WIFI_ADHOC_STATE ; 
 int WIFI_STATION_STATE ; 
 int _FW_LINKED ; 
 int _FW_UNDER_LINKING ; 
 int _FW_UNDER_SURVEY ; 
 int /*<<< orphan*/  FUNC0 (struct mlme_priv*,int) ; 
 scalar_t__ FUNC1 (struct mlme_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct ndis_802_11_ssid*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct _adapter*,struct wlan_network*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct ndis_802_11_ssid*) ; 

void FUNC13(struct _adapter *padapter,
			   struct ndis_802_11_ssid *ssid)
{
	unsigned long irqL;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	struct wlan_network *pnetwork = &pmlmepriv->cur_network;

	if (!padapter->hw_init_completed)
		return;
	FUNC10(&pmlmepriv->lock, irqL);
	if (FUNC1(pmlmepriv, _FW_UNDER_SURVEY | _FW_UNDER_LINKING)) {
		FUNC1(pmlmepriv, _FW_UNDER_LINKING);
		goto _Abort_Set_SSID;
	}
	if (FUNC1(pmlmepriv, _FW_LINKED | WIFI_ADHOC_MASTER_STATE)) {
		if ((pmlmepriv->assoc_ssid.SsidLength == ssid->SsidLength) &&
		    (!FUNC3(&pmlmepriv->assoc_ssid.Ssid, ssid->Ssid,
		    ssid->SsidLength))) {
			if (!FUNC1(pmlmepriv, WIFI_STATION_STATE)) {
				if (!FUNC8(padapter,
				     pnetwork)) {
					/* if in WIFI_ADHOC_MASTER_STATE or
					 *  WIFI_ADHOC_STATE, create bss or
					 * rejoin again
					 */
					FUNC5(padapter);
					if (FUNC1(pmlmepriv,
					    _FW_LINKED))
						FUNC7(padapter);
					FUNC6(padapter);
					if (FUNC1(pmlmepriv,
					     WIFI_ADHOC_MASTER_STATE)) {
						FUNC0(pmlmepriv,
						    WIFI_ADHOC_MASTER_STATE);
						FUNC9(pmlmepriv,
							    WIFI_ADHOC_STATE);
					}
				} else {
					/* driver is in
					 * WIFI_ADHOC_MASTER_STATE
					 */
					goto _Abort_Set_SSID;
				}
			}
		} else {
			FUNC5(padapter);
			if (FUNC1(pmlmepriv, _FW_LINKED))
				FUNC7(padapter);
			FUNC6(padapter);
			if (FUNC1(pmlmepriv,
			    WIFI_ADHOC_MASTER_STATE)) {
				FUNC0(pmlmepriv,
					      WIFI_ADHOC_MASTER_STATE);
				FUNC9(pmlmepriv, WIFI_ADHOC_STATE);
			}
		}
	}
	if (padapter->securitypriv.btkip_countermeasure)
		goto _Abort_Set_SSID;
	if (!FUNC12(ssid))
		goto _Abort_Set_SSID;
	FUNC4(&pmlmepriv->assoc_ssid, ssid, sizeof(struct ndis_802_11_ssid));
	pmlmepriv->assoc_by_bssid = false;
	FUNC2(padapter);
	goto done;
_Abort_Set_SSID:
done:
	FUNC11(&pmlmepriv->lock, irqL);
}