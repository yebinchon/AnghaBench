#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  drv_priv; } ;
struct ieee80211_hw {struct cw1200_common* priv; } ;
struct cw1200_sta_priv {int link_id; } ;
struct cw1200_link_entry {int /*<<< orphan*/  timestamp; int /*<<< orphan*/  status; } ;
struct cw1200_common {scalar_t__ mode; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  ps_state_lock; int /*<<< orphan*/  link_id_work; struct cw1200_link_entry* link_id_db; } ;

/* Variables and functions */
 int /*<<< orphan*/  CW1200_LINK_RESERVE ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC5 (struct cw1200_common*) ; 

int FUNC6(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
		      struct ieee80211_sta *sta)
{
	struct cw1200_common *priv = hw->priv;
	struct cw1200_sta_priv *sta_priv =
			(struct cw1200_sta_priv *)&sta->drv_priv;
	struct cw1200_link_entry *entry;

	if (priv->mode != NL80211_IFTYPE_AP || !sta_priv->link_id)
		return 0;

	entry = &priv->link_id_db[sta_priv->link_id - 1];
	FUNC2(&priv->ps_state_lock);
	entry->status = CW1200_LINK_RESERVE;
	entry->timestamp = jiffies;
	FUNC4(priv);
	if (FUNC1(priv->workqueue, &priv->link_id_work) <= 0)
		FUNC5(priv);
	FUNC3(&priv->ps_state_lock);
	FUNC0(priv->workqueue);
	return 0;
}