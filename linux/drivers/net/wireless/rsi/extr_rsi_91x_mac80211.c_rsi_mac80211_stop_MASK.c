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
struct rsi_common {int iface_down; int /*<<< orphan*/  mutex; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct rsi_hw* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_ZONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsi_common*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw)
{
	struct rsi_hw *adapter = hw->priv;
	struct rsi_common *common = adapter->priv;

	FUNC2(ERR_ZONE, "===> Interface DOWN <===\n");
	FUNC0(&common->mutex);
	common->iface_down = true;
	FUNC4(hw->wiphy);

	/* Block all rx frames */
	FUNC3(common, 0xffff);

	FUNC1(&common->mutex);
}