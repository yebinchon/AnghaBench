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
struct rsi_hw {scalar_t__ sc_nvifs; struct ieee80211_vif** vifs; struct rsi_common* priv; } ;
struct rsi_common {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int /*<<< orphan*/  addr; int /*<<< orphan*/  type; } ;
struct ieee80211_hw {struct rsi_hw* priv; } ;
typedef  enum opmode { ____Placeholder_opmode } opmode ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_ZONE ; 
 int /*<<< orphan*/  INFO_ZONE ; 
 int RSI_MAX_VIFS ; 
 int RSI_OPMODE_UNSUPPORTED ; 
 int /*<<< orphan*/  VAP_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rsi_common*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
					  struct ieee80211_vif *vif)
{
	struct rsi_hw *adapter = hw->priv;
	struct rsi_common *common = adapter->priv;
	enum opmode opmode;
	int i;

	FUNC2(INFO_ZONE, "Remove Interface Called\n");

	FUNC0(&common->mutex);

	if (adapter->sc_nvifs <= 0) {
		FUNC1(&common->mutex);
		return;
	}

	opmode = FUNC3(vif->type);
	if (opmode == RSI_OPMODE_UNSUPPORTED) {
		FUNC2(ERR_ZONE, "Opmode error : %d\n", opmode);
		FUNC1(&common->mutex);
		return;
	}
	for (i = 0; i < RSI_MAX_VIFS; i++) {
		if (!adapter->vifs[i])
			continue;
		if (vif == adapter->vifs[i]) {
			FUNC4(common, opmode, vif->addr,
						 i, VAP_DELETE);
			adapter->sc_nvifs--;
			adapter->vifs[i] = NULL;
		}
	}
	FUNC1(&common->mutex);
}