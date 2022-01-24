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
struct rsi_common {scalar_t__ fsm_state; int /*<<< orphan*/  mutex; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct rsi_hw* priv; } ;

/* Variables and functions */
 scalar_t__ FSM_MAC_INIT_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw)
{
	struct rsi_hw *adapter = hw->priv;
	struct rsi_common *common = adapter->priv;

	FUNC0(&common->mutex);
	if (common->fsm_state != FSM_MAC_INIT_DONE)
		FUNC2(hw->wiphy, true);
	else
		FUNC2(hw->wiphy, false);
	FUNC1(&common->mutex);
}