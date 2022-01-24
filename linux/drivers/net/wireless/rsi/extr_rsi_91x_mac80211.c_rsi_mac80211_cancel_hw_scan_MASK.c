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
struct rsi_hw {int /*<<< orphan*/  hw; struct rsi_common* priv; } ;
struct rsi_common {int bgscan_en; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * hwscan; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct rsi_hw* priv; } ;
struct cfg80211_scan_info {int aborted; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO_ZONE ; 
 int /*<<< orphan*/  RSI_STOP_BGSCAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cfg80211_scan_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct rsi_common*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
					struct ieee80211_vif *vif)
{
	struct rsi_hw *adapter = hw->priv;
	struct rsi_common *common = adapter->priv;
	struct cfg80211_scan_info info;

	FUNC3(INFO_ZONE, "***** Hardware scan stop *****\n");
	FUNC1(&common->mutex);

	if (common->bgscan_en) {
		if (!FUNC4(common, RSI_STOP_BGSCAN))
			common->bgscan_en = false;
		info.aborted = false;
		FUNC0(adapter->hw, &info);
		FUNC3(INFO_ZONE, "Back ground scan cancelled\n");
	}
	common->hwscan = NULL;
	FUNC2(&common->mutex);
}