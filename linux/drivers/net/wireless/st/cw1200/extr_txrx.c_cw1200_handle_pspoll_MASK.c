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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_sta {int /*<<< orphan*/  drv_priv; } ;
struct ieee80211_pspoll {int /*<<< orphan*/  ta; int /*<<< orphan*/  bssid; } ;
struct cw1200_sta_priv {int link_id; } ;
struct cw1200_common {scalar_t__ join_status; int /*<<< orphan*/ * tx_queue; int /*<<< orphan*/  pspoll_mask; TYPE_1__* vif; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CW1200_JOIN_STATUS_AP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC1 (struct cw1200_common*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ieee80211_sta* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct cw1200_common *priv,
				struct sk_buff *skb)
{
	struct ieee80211_sta *sta;
	struct ieee80211_pspoll *pspoll = (struct ieee80211_pspoll *)skb->data;
	int link_id = 0;
	u32 pspoll_mask = 0;
	int drop = 1;
	int i;

	if (priv->join_status != CW1200_JOIN_STATUS_AP)
		goto done;
	if (FUNC4(priv->vif->addr, pspoll->bssid, ETH_ALEN))
		goto done;

	FUNC6();
	sta = FUNC3(priv->vif, pspoll->ta);
	if (sta) {
		struct cw1200_sta_priv *sta_priv;
		sta_priv = (struct cw1200_sta_priv *)&sta->drv_priv;
		link_id = sta_priv->link_id;
		pspoll_mask = FUNC0(sta_priv->link_id);
	}
	FUNC7();
	if (!link_id)
		goto done;

	priv->pspoll_mask |= pspoll_mask;
	drop = 0;

	/* Do not report pspols if data for given link id is queued already. */
	for (i = 0; i < 4; ++i) {
		if (FUNC2(&priv->tx_queue[i],
						pspoll_mask)) {
			FUNC1(priv);
			drop = 1;
			break;
		}
	}
	FUNC5("[RX] PSPOLL: %s\n", drop ? "local" : "fwd");
done:
	return drop;
}