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
struct rsi_hw {struct rsi_common* priv; } ;
struct rsi_common {int /*<<< orphan*/  mutex; int /*<<< orphan*/  roc_timer; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct rsi_hw* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO_ZONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct rsi_common*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif)
{
	struct rsi_hw *adapter = hw->priv;
	struct rsi_common *common = adapter->priv;

	FUNC3(INFO_ZONE, "Cancel remain on channel\n");

	FUNC1(&common->mutex);
	if (!FUNC5(&common->roc_timer)) {
		FUNC2(&common->mutex);
		return 0;
	}

	FUNC0(&common->roc_timer);

	FUNC4(common);
	FUNC2(&common->mutex);

	return 0;
}