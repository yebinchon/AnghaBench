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
struct wireless_dev {int /*<<< orphan*/  netdev; } ;
struct wiphy {int dummy; } ;
struct wilc_vif {int /*<<< orphan*/  ndev; } ;
typedef  int s32 ;
typedef  enum nl80211_tx_power_setting { ____Placeholder_nl80211_tx_power_setting } nl80211_tx_power_setting ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct wilc_vif* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wilc_vif*,int) ; 

__attribute__((used)) static int FUNC4(struct wiphy *wiphy, struct wireless_dev *wdev,
			enum nl80211_tx_power_setting type, int mbm)
{
	int ret;
	s32 tx_power = FUNC0(mbm);
	struct wilc_vif *vif = FUNC2(wdev->netdev);

	if (tx_power < 0)
		tx_power = 0;
	else if (tx_power > 18)
		tx_power = 18;
	ret = FUNC3(vif, tx_power);
	if (ret)
		FUNC1(vif->ndev, "Failed to set tx power\n");

	return ret;
}