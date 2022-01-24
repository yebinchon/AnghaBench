#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct cw1200_link_entry {scalar_t__ status; unsigned long timestamp; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  buffered; int /*<<< orphan*/  mac; } ;
struct TYPE_3__ {int /*<<< orphan*/ * link_map_cache; } ;
struct cw1200_common {int /*<<< orphan*/  ps_state_lock; TYPE_2__* hw; int /*<<< orphan*/  link_id_work; int /*<<< orphan*/  workqueue; struct cw1200_link_entry* link_id_db; TYPE_1__ tx_queue_stats; } ;
struct TYPE_4__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 scalar_t__ CW1200_LINK_HARD ; 
 scalar_t__ CW1200_LINK_RESERVE ; 
 int CW1200_MAX_STA_IN_AP_MODE ; 
 int /*<<< orphan*/  CW1200_MAX_TID ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC9 (struct cw1200_common*) ; 

int FUNC10(struct cw1200_common *priv, const u8 *mac)
{
	int i, ret = 0;
	unsigned long max_inactivity = 0;
	unsigned long now = jiffies;

	FUNC5(&priv->ps_state_lock);
	for (i = 0; i < CW1200_MAX_STA_IN_AP_MODE; ++i) {
		if (!priv->link_id_db[i].status) {
			ret = i + 1;
			break;
		} else if (priv->link_id_db[i].status != CW1200_LINK_HARD &&
			   !priv->tx_queue_stats.link_map_cache[i + 1]) {
			unsigned long inactivity =
				now - priv->link_id_db[i].timestamp;
			if (inactivity < max_inactivity)
				continue;
			max_inactivity = inactivity;
			ret = i + 1;
		}
	}
	if (ret) {
		struct cw1200_link_entry *entry = &priv->link_id_db[ret - 1];
		FUNC2("[AP] STA added, link_id: %d\n", ret);
		entry->status = CW1200_LINK_RESERVE;
		FUNC0(&entry->mac, mac, ETH_ALEN);
		FUNC1(&entry->buffered, 0, CW1200_MAX_TID);
		FUNC4(&entry->rx_queue);
		FUNC8(priv);
		if (FUNC3(priv->workqueue, &priv->link_id_work) <= 0)
			FUNC9(priv);
	} else {
		FUNC7(priv->hw->wiphy,
			   "[AP] Early: no more link IDs available.\n");
	}

	FUNC6(&priv->ps_state_lock);
	return ret;
}