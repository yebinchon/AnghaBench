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
struct ieee80211_hw {struct cw1200_common* priv; } ;
struct cw1200_common {int /*<<< orphan*/  pm_state; int /*<<< orphan*/  tx_queue_stats; int /*<<< orphan*/ * tx_queue; int /*<<< orphan*/ * sdd; int /*<<< orphan*/ * workqueue; int /*<<< orphan*/  wsm_cmd_buf; int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  mcast_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct ieee80211_hw *dev)
{
	struct cw1200_common *priv = dev->priv;
	int i;

	FUNC7(dev);

	FUNC5(&priv->mcast_timeout);
	FUNC4(priv);

	FUNC0(priv);

	FUNC8(&priv->conf_mutex);

	FUNC10(&priv->wsm_cmd_buf);

	FUNC6(priv->workqueue);
	priv->workqueue = NULL;

	if (priv->sdd) {
		FUNC9(priv->sdd);
		priv->sdd = NULL;
	}

	for (i = 0; i < 4; ++i)
		FUNC2(&priv->tx_queue[i]);

	FUNC3(&priv->tx_queue_stats);
#ifdef CONFIG_PM
	cw1200_pm_deinit(&priv->pm_state);
#endif
}