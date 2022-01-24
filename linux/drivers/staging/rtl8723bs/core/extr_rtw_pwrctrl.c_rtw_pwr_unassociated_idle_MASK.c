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
struct xmit_priv {scalar_t__ free_xmitbuf_cnt; scalar_t__ free_xmit_extbuf_cnt; } ;
struct mlme_priv {int dummy; } ;
struct adapter {struct mlme_priv mlmepriv; struct xmit_priv xmitpriv; struct adapter* pbuddy_adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  ips_deny_time; scalar_t__ bpower_saving; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ NR_XMITBUFF ; 
 scalar_t__ NR_XMIT_EXTBUFF ; 
 int WIFI_ADHOC_MASTER_STATE ; 
 int WIFI_ADHOC_STATE ; 
 int WIFI_AP_STATE ; 
 int WIFI_ASOC_STATE ; 
 int WIFI_SITE_MONITOR ; 
 int WIFI_UNDER_LINKING ; 
 int WIFI_UNDER_WPS ; 
 int /*<<< orphan*/  _drv_always_ ; 
 TYPE_1__* FUNC1 (struct adapter*) ; 
 scalar_t__ FUNC2 (struct mlme_priv*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct adapter *adapter)
{
	struct adapter *buddy = adapter->pbuddy_adapter;
	struct mlme_priv *pmlmepriv = &(adapter->mlmepriv);
	struct xmit_priv *pxmit_priv = &adapter->xmitpriv;

	bool ret = false;

	if (FUNC1(adapter)->bpower_saving) {
		/* DBG_871X("%s: already in LPS or IPS mode\n", __func__); */
		goto exit;
	}

	if (FUNC3(jiffies, FUNC1(adapter)->ips_deny_time)) {
		/* DBG_871X("%s ips_deny_time\n", __func__); */
		goto exit;
	}

	if (FUNC2(pmlmepriv, WIFI_ASOC_STATE|WIFI_SITE_MONITOR)
		|| FUNC2(pmlmepriv, WIFI_UNDER_LINKING|WIFI_UNDER_WPS)
		|| FUNC2(pmlmepriv, WIFI_AP_STATE)
		|| FUNC2(pmlmepriv, WIFI_ADHOC_MASTER_STATE|WIFI_ADHOC_STATE)
	)
		goto exit;

	/* consider buddy, if exist */
	if (buddy) {
		struct mlme_priv *b_pmlmepriv = &(buddy->mlmepriv);

		if (FUNC2(b_pmlmepriv, WIFI_ASOC_STATE|WIFI_SITE_MONITOR)
			|| FUNC2(b_pmlmepriv, WIFI_UNDER_LINKING|WIFI_UNDER_WPS)
			|| FUNC2(b_pmlmepriv, WIFI_AP_STATE)
			|| FUNC2(b_pmlmepriv, WIFI_ADHOC_MASTER_STATE|WIFI_ADHOC_STATE)
		)
			goto exit;
	}

	if (pxmit_priv->free_xmitbuf_cnt != NR_XMITBUFF ||
		pxmit_priv->free_xmit_extbuf_cnt != NR_XMIT_EXTBUFF) {
		FUNC0(_drv_always_, "There are some pkts to transmit\n");
		FUNC0(_drv_always_, "free_xmitbuf_cnt: %d, free_xmit_extbuf_cnt: %d\n",
			pxmit_priv->free_xmitbuf_cnt, pxmit_priv->free_xmit_extbuf_cnt);
		goto exit;
	}

	ret = true;

exit:
	return ret;
}