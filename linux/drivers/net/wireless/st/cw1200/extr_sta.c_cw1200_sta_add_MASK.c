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
struct sk_buff {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int uapsd_queues; int /*<<< orphan*/  addr; int /*<<< orphan*/  drv_priv; } ;
struct ieee80211_hw {struct cw1200_common* priv; } ;
struct cw1200_sta_priv {int link_id; } ;
struct cw1200_link_entry {int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  status; } ;
struct cw1200_common {scalar_t__ mode; int /*<<< orphan*/  ps_state_lock; TYPE_1__* hw; int /*<<< orphan*/  sta_asleep_mask; struct cw1200_link_entry* link_id_db; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CW1200_LINK_HARD ; 
 int ENOENT ; 
 int IEEE80211_WMM_IE_STA_QOSINFO_AC_MASK ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct cw1200_common*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

int FUNC8(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
		   struct ieee80211_sta *sta)
{
	struct cw1200_common *priv = hw->priv;
	struct cw1200_sta_priv *sta_priv =
			(struct cw1200_sta_priv *)&sta->drv_priv;
	struct cw1200_link_entry *entry;
	struct sk_buff *skb;

	if (priv->mode != NL80211_IFTYPE_AP)
		return 0;

	sta_priv->link_id = FUNC2(priv, sta->addr);
	if (FUNC1(!sta_priv->link_id)) {
		FUNC7(priv->hw->wiphy,
			   "[AP] No more link IDs available.\n");
		return -ENOENT;
	}

	entry = &priv->link_id_db[sta_priv->link_id - 1];
	FUNC5(&priv->ps_state_lock);
	if ((sta->uapsd_queues & IEEE80211_WMM_IE_STA_QOSINFO_AC_MASK) ==
					IEEE80211_WMM_IE_STA_QOSINFO_AC_MASK)
		priv->sta_asleep_mask |= FUNC0(sta_priv->link_id);
	entry->status = CW1200_LINK_HARD;
	while ((skb = FUNC4(&entry->rx_queue)))
		FUNC3(priv->hw, skb);
	FUNC6(&priv->ps_state_lock);
	return 0;
}