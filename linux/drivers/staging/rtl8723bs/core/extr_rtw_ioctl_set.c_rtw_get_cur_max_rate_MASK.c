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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct wlan_bssid_ex {int* SupportedRates; } ;
struct TYPE_5__ {int /*<<< orphan*/  supp_mcs_set; } ;
struct TYPE_6__ {TYPE_2__ ht_cap; } ;
struct sta_info {scalar_t__ bw_mode; TYPE_3__ htpriv; int /*<<< orphan*/  wireless_mode; } ;
struct TYPE_4__ {struct wlan_bssid_ex network; } ;
struct mlme_priv {TYPE_1__ cur_network; } ;
struct adapter {int /*<<< orphan*/  stapriv; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 scalar_t__ CHANNEL_WIDTH_40 ; 
 int /*<<< orphan*/  HW_VAR_RF_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIFI_ADHOC_MASTER_STATE ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 int FUNC1 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlme_priv*) ; 
 scalar_t__ FUNC3 (struct sta_info*) ; 
 struct sta_info* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC6 (scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 

u16 FUNC7(struct adapter *adapter)
{
	int	i = 0;
	u16 rate = 0, max_rate = 0;
	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
	struct wlan_bssid_ex	*pcur_bss = &pmlmepriv->cur_network.network;
	struct sta_info *psta = NULL;
	u8 short_GI = 0;
	u8 rf_type = 0;

	if ((FUNC1(pmlmepriv, _FW_LINKED) != true)
		&& (FUNC1(pmlmepriv, WIFI_ADHOC_MASTER_STATE) != true))
		return 0;

	psta = FUNC4(&adapter->stapriv, FUNC2(pmlmepriv));
	if (psta == NULL)
		return 0;

	short_GI = FUNC3(psta);

	if (FUNC0(psta->wireless_mode)) {
		FUNC5(adapter, HW_VAR_RF_TYPE, (u8 *)(&rf_type));

		max_rate = FUNC6(
			rf_type,
			((psta->bw_mode == CHANNEL_WIDTH_40)?1:0),
			short_GI,
			psta->htpriv.ht_cap.supp_mcs_set
		);
	} else {
		while ((pcur_bss->SupportedRates[i] != 0) && (pcur_bss->SupportedRates[i] != 0xFF)) {
			rate = pcur_bss->SupportedRates[i]&0x7F;
			if (rate > max_rate)
				max_rate = rate;
			i++;
		}

		max_rate = max_rate*10/2;
	}

	return max_rate;
}