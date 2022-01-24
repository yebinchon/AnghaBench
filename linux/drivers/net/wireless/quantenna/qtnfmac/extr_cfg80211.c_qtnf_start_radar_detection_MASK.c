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
typedef  int /*<<< orphan*/  u32 ;
struct wiphy {int dummy; } ;
struct qtnf_vif {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct cfg80211_chan_def {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  NL80211_EXT_FEATURE_DFS_OFFLOAD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct qtnf_vif*,struct cfg80211_chan_def*,int /*<<< orphan*/ ) ; 
 struct qtnf_vif* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct wiphy*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct wiphy *wiphy,
				      struct net_device *ndev,
				      struct cfg80211_chan_def *chandef,
				      u32 cac_time_ms)
{
	struct qtnf_vif *vif = FUNC2(ndev);
	int ret;

	if (FUNC3(wiphy, NL80211_EXT_FEATURE_DFS_OFFLOAD))
		return -ENOTSUPP;

	ret = FUNC1(vif, chandef, cac_time_ms);
	if (ret)
		FUNC0("%s: failed to start CAC ret=%d\n", ndev->name, ret);

	return ret;
}