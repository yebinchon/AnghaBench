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
typedef  int /*<<< orphan*/  u8 ;
struct wlan_bssid_ex {int /*<<< orphan*/  Ssid; int /*<<< orphan*/ * MacAddress; } ;
struct ndis_802_11_ssid {int dummy; } ;
struct mlme_priv {int to_join; int /*<<< orphan*/  lock; int /*<<< orphan*/  assoc_timer; int /*<<< orphan*/  fw_state; int /*<<< orphan*/  assoc_ssid; int /*<<< orphan*/  scan_to_timer; } ;
struct TYPE_2__ {struct wlan_bssid_ex dev_network; } ;
struct _adapter {TYPE_1__ registrypriv; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_JOIN_TIMEOUT ; 
 int /*<<< orphan*/  WIFI_ADHOC_MASTER_STATE ; 
 int /*<<< orphan*/  WIFI_ADHOC_STATE ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 int /*<<< orphan*/  _FW_UNDER_LINKING ; 
 int /*<<< orphan*/  _FW_UNDER_SURVEY ; 
 int /*<<< orphan*/  FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mlme_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC12(struct _adapter *adapter, u8 *pbuf)
{
	unsigned long irqL;
	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;

	FUNC10(&pmlmepriv->lock, irqL);

	if (FUNC1(pmlmepriv, _FW_UNDER_SURVEY)) {
		FUNC2(&pmlmepriv->scan_to_timer);

		FUNC0(pmlmepriv, _FW_UNDER_SURVEY);
	}

	if (pmlmepriv->to_join) {
		if (FUNC1(pmlmepriv, WIFI_ADHOC_STATE)) {
			if (!FUNC1(pmlmepriv, _FW_LINKED)) {
				FUNC9(pmlmepriv, _FW_UNDER_LINKING);

				if (!FUNC7(pmlmepriv)) {
					FUNC4(&pmlmepriv->assoc_timer, jiffies +
						  FUNC5(MAX_JOIN_TIMEOUT));
				} else {
					struct wlan_bssid_ex *pdev_network =
					  &(adapter->registrypriv.dev_network);
					u8 *pibss =
						 adapter->registrypriv.
							dev_network.MacAddress;
					pmlmepriv->fw_state ^= _FW_UNDER_SURVEY;
					FUNC3(&pdev_network->Ssid,
						&pmlmepriv->assoc_ssid,
						sizeof(struct
							 ndis_802_11_ssid));
					FUNC8
						(adapter);
					FUNC6(pibss);
					pmlmepriv->fw_state =
						 WIFI_ADHOC_MASTER_STATE;
					pmlmepriv->to_join = false;
				}
			}
		} else {
			pmlmepriv->to_join = false;
			FUNC9(pmlmepriv, _FW_UNDER_LINKING);
			if (!FUNC7(pmlmepriv))
				FUNC4(&pmlmepriv->assoc_timer, jiffies +
					  FUNC5(MAX_JOIN_TIMEOUT));
			else
				FUNC0(pmlmepriv, _FW_UNDER_LINKING);
		}
	}
	FUNC11(&pmlmepriv->lock, irqL);
}