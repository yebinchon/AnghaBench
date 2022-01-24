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
struct qtnf_wmac {int dummy; } ;
struct TYPE_2__ {scalar_t__ iftype; int /*<<< orphan*/  wiphy; } ;
struct qtnf_vif {TYPE_1__ wdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ ) ; 
 struct qtnf_vif* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct qtnf_wmac*,int) ; 
 struct qtnf_wmac* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct net_device *ndev)
{
	struct qtnf_vif *vif = FUNC1(ndev);
	struct qtnf_wmac *mac = FUNC3(vif->wdev.wiphy);

	if (vif->wdev.iftype == NL80211_IFTYPE_STATION)
		FUNC0(vif->wdev.wiphy, ndev,
				WLAN_REASON_DEAUTH_LEAVING);

	FUNC2(mac, true);
}