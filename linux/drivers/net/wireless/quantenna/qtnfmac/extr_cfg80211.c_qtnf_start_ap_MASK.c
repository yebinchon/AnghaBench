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
struct wiphy {int dummy; } ;
struct qtnf_vif {int /*<<< orphan*/  vifid; TYPE_1__* mac; } ;
struct net_device {int dummy; } ;
struct cfg80211_ap_settings {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  macid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qtnf_vif*,struct cfg80211_ap_settings*) ; 
 struct qtnf_vif* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct wiphy *wiphy, struct net_device *dev,
			 struct cfg80211_ap_settings *settings)
{
	struct qtnf_vif *vif = FUNC2(dev);
	int ret;

	ret = FUNC1(vif, settings);
	if (ret)
		FUNC0("VIF%u.%u: failed to start AP\n", vif->mac->macid,
		       vif->vifid);

	return ret;
}