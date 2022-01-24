#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int dummy; } ;
struct qtnf_vif {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct cfg80211_csa_settings {TYPE_2__ chandef; int /*<<< orphan*/  block_tx; int /*<<< orphan*/  radar_required; int /*<<< orphan*/  count; } ;
struct TYPE_3__ {int /*<<< orphan*/  hw_value; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qtnf_vif*,struct cfg80211_csa_settings*) ; 
 struct qtnf_vif* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct wiphy *wiphy, struct net_device *dev,
			       struct cfg80211_csa_settings *params)
{
	struct qtnf_vif *vif = FUNC5(dev);
	int ret;

	FUNC1("%s: chan(%u) count(%u) radar(%u) block_tx(%u)\n", dev->name,
		 params->chandef.chan->hw_value, params->count,
		 params->radar_required, params->block_tx);

	if (!FUNC0(&params->chandef)) {
		FUNC2("%s: invalid channel\n", dev->name);
		return -EINVAL;
	}

	ret = FUNC4(vif, params);
	if (ret)
		FUNC3("%s: failed to switch to channel (%u)\n",
			dev->name, params->chandef.chan->hw_value);

	return ret;
}