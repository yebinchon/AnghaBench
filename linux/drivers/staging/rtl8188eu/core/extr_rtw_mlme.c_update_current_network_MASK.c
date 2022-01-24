#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wlan_bssid_ex {int dummy; } ;
struct ndis_802_11_fixed_ie {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  ie_length; scalar_t__ ies; } ;
struct TYPE_4__ {TYPE_2__ network; } ;
struct mlme_priv {TYPE_1__ cur_network; } ;
struct adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  _FW_LINKED ; 
 scalar_t__ FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,struct wlan_bssid_ex*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct wlan_bssid_ex*,struct adapter*,int) ; 

__attribute__((used)) static void FUNC4(struct adapter *adapter, struct wlan_bssid_ex *pnetwork)
{
	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;

	if (FUNC0(pmlmepriv, _FW_LINKED) &&
	    FUNC1(&pmlmepriv->cur_network.network, pnetwork)) {
		FUNC3(&pmlmepriv->cur_network.network, pnetwork, adapter, true);
		FUNC2(adapter, (pmlmepriv->cur_network.network.ies) + sizeof(struct ndis_802_11_fixed_ie),
				      pmlmepriv->cur_network.network.ie_length);
	}
}