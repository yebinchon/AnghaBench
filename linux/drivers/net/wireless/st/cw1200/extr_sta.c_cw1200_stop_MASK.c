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
struct ieee80211_hw {struct cw1200_common* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  timeout; int /*<<< orphan*/  probe_work; int /*<<< orphan*/  lock; int /*<<< orphan*/ * req; } ;
struct cw1200_common {int listening; int join_pending; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/ * tx_queue; int /*<<< orphan*/  join_status; int /*<<< orphan*/  event_queue_lock; int /*<<< orphan*/  event_queue; int /*<<< orphan*/  mode; int /*<<< orphan*/  mcast_timeout; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  link_id_gc_work; int /*<<< orphan*/  unjoin_work; int /*<<< orphan*/  join_timeout; int /*<<< orphan*/  clear_recent_scan_work; TYPE_1__ scan; } ;

/* Variables and functions */
 int /*<<< orphan*/  CW1200_JOIN_STATUS_PASSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NL80211_IFTYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cw1200_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC20 (struct cw1200_common*) ; 

void FUNC21(struct ieee80211_hw *dev)
{
	struct cw1200_common *priv = dev->priv;
	FUNC0(list);
	int i;

	FUNC19(priv);

	while (FUNC8(&priv->scan.lock)) {
		/* Scan is in progress. Force it to stop. */
		priv->scan.req = NULL;
		FUNC14();
	}
	FUNC18(&priv->scan.lock);

	FUNC3(&priv->scan.probe_work);
	FUNC3(&priv->scan.timeout);
	FUNC3(&priv->clear_recent_scan_work);
	FUNC3(&priv->join_timeout);
	FUNC5(priv, 0, 0, 0);
	FUNC4(&priv->unjoin_work);
	FUNC3(&priv->link_id_gc_work);
	FUNC9(priv->workqueue);
	FUNC7(&priv->mcast_timeout);
	FUNC11(&priv->conf_mutex);
	priv->mode = NL80211_IFTYPE_UNSPECIFIED;
	priv->listening = false;

	FUNC15(&priv->event_queue_lock);
	FUNC10(&priv->event_queue, &list);
	FUNC16(&priv->event_queue_lock);
	FUNC1(&list);


	priv->join_status = CW1200_JOIN_STATUS_PASSIVE;
	priv->join_pending = false;

	for (i = 0; i < 4; i++)
		FUNC6(&priv->tx_queue[i]);
	FUNC12(&priv->conf_mutex);
	FUNC17(priv);

	/* HACK! */
	if (FUNC2(&priv->tx_lock, 1) != 1)
		FUNC13("[STA] TX is force-unlocked due to stop request.\n");

	FUNC20(priv);
	FUNC2(&priv->tx_lock, 0); /* for recovery to work */
}