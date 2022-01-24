#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct wlan_bssid_ex {int dummy; } ;
struct ndis_802_11_fix_ie {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  IELength; scalar_t__ IEs; } ;
struct TYPE_8__ {TYPE_2__ network; } ;
struct mlme_priv {TYPE_1__ cur_network; } ;
struct adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  _FW_LINKED ; 
 int FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,struct wlan_bssid_ex*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct wlan_bssid_ex*,struct adapter*,int) ; 

__attribute__((used)) static void FUNC5(struct adapter *adapter, struct wlan_bssid_ex *pnetwork)
{
	struct	mlme_priv *pmlmepriv = &(adapter->mlmepriv);

	FUNC2(&(pmlmepriv->cur_network.network),
		&(pmlmepriv->cur_network.network),
		&(pmlmepriv->cur_network.network),
		&(pmlmepriv->cur_network.network));

	if ((FUNC0(pmlmepriv, _FW_LINKED) == true) && (FUNC1(&(pmlmepriv->cur_network.network), pnetwork, 0))) {
		/* RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_,"Same Network\n"); */

		/* if (pmlmepriv->cur_network.network.IELength<= pnetwork->IELength) */
		{
			FUNC4(&(pmlmepriv->cur_network.network), pnetwork, adapter, true);
			FUNC3(adapter, (pmlmepriv->cur_network.network.IEs) + sizeof(struct ndis_802_11_fix_ie),
									pmlmepriv->cur_network.network.IELength);
		}
	}
}