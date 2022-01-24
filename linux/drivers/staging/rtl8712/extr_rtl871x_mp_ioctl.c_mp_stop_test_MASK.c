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
struct TYPE_2__ {int /*<<< orphan*/  MacAddress; } ;
struct wlan_network {TYPE_1__ network; } ;
struct sta_info {int dummy; } ;
struct mp_priv {int /*<<< orphan*/  prev_fw_state; } ;
struct mlme_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  fw_state; struct wlan_network cur_network; } ;
struct _adapter {int /*<<< orphan*/  stapriv; struct mlme_priv mlmepriv; struct mp_priv mppriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  WIFI_MP_STATE ; 
 int _SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wlan_network*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,struct sta_info*) ; 
 struct sta_info* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct _adapter *padapter)
{
	struct mp_priv *pmppriv = &padapter->mppriv;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	struct wlan_network *tgt_network = &pmlmepriv->cur_network;
	struct sta_info *psta;
	unsigned long irqL;

	FUNC5(&pmlmepriv->lock, irqL);
	if (!FUNC0(pmlmepriv, WIFI_MP_STATE))
		goto end_of_mp_stop_test;
	/* 3 1. disconnect pseudo AdHoc */
	FUNC4(padapter);
	/* 3 2. clear psta used in mp test mode. */
	psta = FUNC3(&padapter->stapriv,
				 tgt_network->network.MacAddress);
	if (psta)
		FUNC2(padapter, psta);
	/* 3 3. return to normal state (default:station mode) */
	pmlmepriv->fw_state = pmppriv->prev_fw_state; /* WIFI_STATION_STATE;*/
	/*flush the cur_network*/
	FUNC1(tgt_network, 0, sizeof(struct wlan_network));
end_of_mp_stop_test:
	FUNC6(&pmlmepriv->lock, irqL);
	return _SUCCESS;
}