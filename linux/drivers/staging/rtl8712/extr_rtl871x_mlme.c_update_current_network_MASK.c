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
struct TYPE_5__ {int /*<<< orphan*/  IELength; scalar_t__ IEs; } ;
struct TYPE_4__ {TYPE_2__ network; } ;
struct mlme_priv {TYPE_1__ cur_network; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;
struct NDIS_802_11_FIXED_IEs {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,struct wlan_bssid_ex*) ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct wlan_bssid_ex*,struct _adapter*) ; 

__attribute__((used)) static void FUNC3(struct _adapter *adapter,
				   struct wlan_bssid_ex *pnetwork)
{
	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;

	if (FUNC0(&(pmlmepriv->cur_network.network), pnetwork)) {
		FUNC2(&(pmlmepriv->cur_network.network),
			       pnetwork, adapter);
		FUNC1(adapter,
			       (pmlmepriv->cur_network.network.IEs) +
			       sizeof(struct NDIS_802_11_FIXED_IEs),
			       pmlmepriv->cur_network.network.IELength);
	}
}