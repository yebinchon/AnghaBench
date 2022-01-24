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
typedef  scalar_t__ u8 ;
typedef  size_t u32 ;
struct wiphy {int dummy; } ;
struct TYPE_4__ {size_t numpmkid; TYPE_1__* pmkidlist; } ;
struct wilc_priv {TYPE_2__ pmkid_list; } ;
struct wilc_vif {struct wilc_priv priv; } ;
struct net_device {int dummy; } ;
struct cfg80211_pmksa {int /*<<< orphan*/  pmkid; int /*<<< orphan*/  bssid; } ;
struct TYPE_3__ {int /*<<< orphan*/  pmkid; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ PMKID_FOUND ; 
 size_t WILC_MAX_NUM_PMKIDS ; 
 int /*<<< orphan*/  WLAN_PMKID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct wilc_vif* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct wilc_vif*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(struct wiphy *wiphy, struct net_device *netdev,
		     struct cfg80211_pmksa *pmksa)
{
	struct wilc_vif *vif = FUNC3(netdev);
	struct wilc_priv *priv = &vif->priv;
	u32 i;
	int ret = 0;
	u8 flag = 0;

	for (i = 0; i < priv->pmkid_list.numpmkid; i++)	{
		if (!FUNC0(pmksa->bssid, priv->pmkid_list.pmkidlist[i].bssid,
			    ETH_ALEN)) {
			flag = PMKID_FOUND;
			break;
		}
	}
	if (i < WILC_MAX_NUM_PMKIDS) {
		FUNC1(priv->pmkid_list.pmkidlist[i].bssid, pmksa->bssid,
		       ETH_ALEN);
		FUNC1(priv->pmkid_list.pmkidlist[i].pmkid, pmksa->pmkid,
		       WLAN_PMKID_LEN);
		if (!(flag == PMKID_FOUND))
			priv->pmkid_list.numpmkid++;
	} else {
		FUNC2(netdev, "Invalid PMKID index\n");
		ret = -EINVAL;
	}

	if (!ret)
		ret = FUNC4(vif, &priv->pmkid_list);

	return ret;
}