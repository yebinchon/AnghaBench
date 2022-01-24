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
typedef  int /*<<< orphan*/  u8 ;
struct wlan_network {int /*<<< orphan*/  list; } ;
struct ndis_802_11_ssid {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  InfrastructureMode; } ;
struct TYPE_5__ {TYPE_1__ network; } ;
struct mlme_priv {TYPE_3__ free_bss_pool; int /*<<< orphan*/ * free_bss_buf; int /*<<< orphan*/  assoc_ssid; TYPE_3__ scanned_queue; int /*<<< orphan*/  lock; int /*<<< orphan*/  scan_mode; TYPE_2__ cur_network; scalar_t__ fw_state; int /*<<< orphan*/ * pscanned; int /*<<< orphan*/ * nic_hdl; } ;
struct adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_BSS_CNT ; 
 int /*<<< orphan*/  Ndis802_11AutoUnknown ; 
 int /*<<< orphan*/  SCAN_ACTIVE ; 
 int _FAIL ; 
 int _SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct adapter *padapter)
{
	int i;
	u8 *pbuf;
	struct wlan_network *pnetwork;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	int res = _SUCCESS;

	/*  We don't need to memset padapter->XXX to zero, because adapter is allocated by vzalloc(). */

	pmlmepriv->nic_hdl = (u8 *)padapter;

	pmlmepriv->pscanned = NULL;
	pmlmepriv->fw_state = 0;
	pmlmepriv->cur_network.network.InfrastructureMode = Ndis802_11AutoUnknown;
	pmlmepriv->scan_mode = SCAN_ACTIVE;/*  1: active, 0: pasive. Maybe someday we should rename this varable to "active_mode" (Jeff) */

	FUNC7(&pmlmepriv->lock);
	FUNC1(&pmlmepriv->free_bss_pool);
	FUNC1(&pmlmepriv->scanned_queue);

	FUNC4(&pmlmepriv->assoc_ssid, 0, sizeof(struct ndis_802_11_ssid));

	pbuf = FUNC8(FUNC2(MAX_BSS_CNT, sizeof(struct wlan_network)));

	if (!pbuf) {
		res = _FAIL;
		goto exit;
	}
	pmlmepriv->free_bss_buf = pbuf;

	pnetwork = (struct wlan_network *)pbuf;

	for (i = 0; i < MAX_BSS_CNT; i++) {
		FUNC0(&pnetwork->list);

		FUNC3(&pnetwork->list, &pmlmepriv->free_bss_pool.queue);

		pnetwork++;
	}

	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */

	FUNC5(padapter);

	FUNC6(padapter);

exit:
	return res;
}