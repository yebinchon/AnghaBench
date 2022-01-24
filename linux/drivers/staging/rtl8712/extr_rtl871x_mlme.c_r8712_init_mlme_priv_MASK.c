#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wlan_network {int /*<<< orphan*/  list; } ;
struct ndis_802_11_ssid {int dummy; } ;
struct TYPE_7__ {int traffic_busy; scalar_t__ last_tx_pkts; scalar_t__ last_rx_pkts; } ;
struct TYPE_8__ {int /*<<< orphan*/  queue; } ;
struct TYPE_5__ {int /*<<< orphan*/  InfrastructureMode; } ;
struct TYPE_6__ {TYPE_1__ network; } ;
struct mlme_priv {int passive_mode; TYPE_3__ sitesurveyctrl; TYPE_4__ free_bss_pool; int /*<<< orphan*/ * free_bss_buf; int /*<<< orphan*/  assoc_ssid; TYPE_4__ scanned_queue; int /*<<< orphan*/  lock2; int /*<<< orphan*/  lock; TYPE_2__ cur_network; scalar_t__ fw_state; int /*<<< orphan*/ * pscanned; int /*<<< orphan*/ * nic_hdl; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;
typedef  scalar_t__ sint ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MAX_BSS_CNT ; 
 int /*<<< orphan*/  Ndis802_11AutoUnknown ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct _adapter *padapter)
{
	sint	i;
	u8	*pbuf;
	struct wlan_network	*pnetwork;
	struct	mlme_priv *pmlmepriv = &padapter->mlmepriv;

	FUNC4((u8 *)pmlmepriv, 0, sizeof(struct mlme_priv));
	pmlmepriv->nic_hdl = (u8 *)padapter;
	pmlmepriv->pscanned = NULL;
	pmlmepriv->fw_state = 0;
	pmlmepriv->cur_network.network.InfrastructureMode =
				 Ndis802_11AutoUnknown;
	/* Maybe someday we should rename this variable to "active_mode"(Jeff)*/
	pmlmepriv->passive_mode = 1; /* 1: active, 0: passive. */
	FUNC7(&(pmlmepriv->lock));
	FUNC7(&(pmlmepriv->lock2));
	FUNC1(&(pmlmepriv->free_bss_pool));
	FUNC1(&(pmlmepriv->scanned_queue));
	FUNC6(pmlmepriv, 0);
	FUNC4(&pmlmepriv->assoc_ssid, 0, sizeof(struct ndis_802_11_ssid));
	pbuf = FUNC2(MAX_BSS_CNT, sizeof(struct wlan_network),
			     GFP_ATOMIC);
	if (!pbuf)
		return -ENOMEM;
	pmlmepriv->free_bss_buf = pbuf;
	pnetwork = (struct wlan_network *)pbuf;
	for (i = 0; i < MAX_BSS_CNT; i++) {
		FUNC0(&(pnetwork->list));
		FUNC3(&(pnetwork->list),
				 &(pmlmepriv->free_bss_pool.queue));
		pnetwork++;
	}
	pmlmepriv->sitesurveyctrl.last_rx_pkts = 0;
	pmlmepriv->sitesurveyctrl.last_tx_pkts = 0;
	pmlmepriv->sitesurveyctrl.traffic_busy = false;
	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
	FUNC5(padapter);
	return 0;
}