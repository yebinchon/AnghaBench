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
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  associated_bss; } ;
struct wilc_vif {TYPE_1__ priv; } ;
struct station_info {int /*<<< orphan*/  signal; int /*<<< orphan*/  filled; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_STA_INFO_SIGNAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wilc_vif* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct wilc_vif*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct wiphy *wiphy, struct net_device *dev,
			int idx, u8 *mac, struct station_info *sinfo)
{
	struct wilc_vif *vif = FUNC2(dev);
	int ret;

	if (idx != 0)
		return -ENOENT;

	sinfo->filled |= FUNC0(NL80211_STA_INFO_SIGNAL);

	ret = FUNC3(vif, &sinfo->signal);
	if (ret)
		return ret;

	FUNC1(mac, vif->priv.associated_bss, ETH_ALEN);
	return 0;
}