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
struct TYPE_2__ {scalar_t__ iftype; int /*<<< orphan*/  wiphy; } ;
struct qtnf_vif {TYPE_1__ wdev; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct qtnf_vif *vif)
{
	if (vif->wdev.iftype == NL80211_IFTYPE_STATION)
		FUNC0(vif->netdev, WLAN_REASON_DEAUTH_LEAVING,
				      NULL, 0, 1, GFP_KERNEL);

	FUNC1(vif->wdev.wiphy);
}