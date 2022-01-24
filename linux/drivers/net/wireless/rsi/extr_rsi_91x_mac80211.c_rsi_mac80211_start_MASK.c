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
struct rsi_hw {struct rsi_common* priv; TYPE_1__* host_intf_ops; } ;
struct rsi_common {int reinit_hw; int iface_down; int /*<<< orphan*/  mutex; int /*<<< orphan*/  wlan_init_completion; scalar_t__ hibernate_resume; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct rsi_hw* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reinit_device ) (struct rsi_hw*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_ZONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsi_common*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rsi_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *hw)
{
	struct rsi_hw *adapter = hw->priv;
	struct rsi_common *common = adapter->priv;

	FUNC2(ERR_ZONE, "===> Interface UP <===\n");
	FUNC0(&common->mutex);
	if (common->hibernate_resume) {
		common->reinit_hw = true;
		adapter->host_intf_ops->reinit_device(adapter);
		FUNC5(&adapter->priv->wlan_init_completion);
	}
	common->iface_down = false;
	FUNC6(hw->wiphy);
	FUNC3(common, 0);
	FUNC1(&common->mutex);

	return 0;
}