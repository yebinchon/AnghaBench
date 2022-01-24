#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int dummy; } ;
struct TYPE_8__ {int iftype; } ;
struct TYPE_6__ {int /*<<< orphan*/  sta_associated_bss; } ;
struct TYPE_5__ {int local_random; int recv_random; int is_wilc_ie; } ;
struct wilc_priv {TYPE_4__ wdev; TYPE_2__ assoc_stainfo; TYPE_1__ p2p; } ;
struct wilc_vif {int connecting; void* iftype; int /*<<< orphan*/  idx; int /*<<< orphan*/  monitor_flag; struct wilc_priv priv; } ;
struct wilc {int /*<<< orphan*/  initialized; } ;
struct vif_params {int dummy; } ;
struct net_device {TYPE_3__* ieee80211_ptr; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_7__ {int iftype; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_ALEN ; 
#define  NL80211_IFTYPE_AP 131 
#define  NL80211_IFTYPE_P2P_CLIENT 130 
#define  NL80211_IFTYPE_P2P_GO 129 
#define  NL80211_IFTYPE_STATION 128 
 void* WILC_AP_MODE ; 
 void* WILC_CLIENT_MODE ; 
 void* WILC_GO_MODE ; 
 int WILC_MAX_NUM_STA ; 
 void* WILC_STATION_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int) ; 
 struct wilc_vif* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct wilc_vif*) ; 
 int /*<<< orphan*/  FUNC4 (struct wilc_vif*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wilc*,int) ; 
 struct wilc* FUNC6 (struct wiphy*) ; 

__attribute__((used)) static int FUNC7(struct wiphy *wiphy, struct net_device *dev,
			       enum nl80211_iftype type,
			       struct vif_params *params)
{
	struct wilc *wl = FUNC6(wiphy);
	struct wilc_vif *vif = FUNC2(dev);
	struct wilc_priv *priv = &vif->priv;

	priv->p2p.local_random = 0x01;
	priv->p2p.recv_random = 0x00;
	priv->p2p.is_wilc_ie = false;

	switch (type) {
	case NL80211_IFTYPE_STATION:
		vif->connecting = false;
		dev->ieee80211_ptr->iftype = type;
		priv->wdev.iftype = type;
		vif->monitor_flag = 0;
		if (vif->iftype == WILC_AP_MODE || vif->iftype == WILC_GO_MODE)
			FUNC5(wl, true);
		vif->iftype = WILC_STATION_MODE;
		FUNC4(vif, FUNC3(vif),
					WILC_STATION_MODE, vif->idx);

		FUNC0(priv->assoc_stainfo.sta_associated_bss, 0,
		       WILC_MAX_NUM_STA * ETH_ALEN);
		break;

	case NL80211_IFTYPE_P2P_CLIENT:
		vif->connecting = false;
		dev->ieee80211_ptr->iftype = type;
		priv->wdev.iftype = type;
		vif->monitor_flag = 0;
		vif->iftype = WILC_CLIENT_MODE;
		FUNC4(vif, FUNC3(vif),
					WILC_STATION_MODE, vif->idx);
		break;

	case NL80211_IFTYPE_AP:
		dev->ieee80211_ptr->iftype = type;
		priv->wdev.iftype = type;
		vif->iftype = WILC_AP_MODE;

		if (wl->initialized)
			FUNC4(vif, FUNC3(vif),
						WILC_AP_MODE, vif->idx);
		break;

	case NL80211_IFTYPE_P2P_GO:
		dev->ieee80211_ptr->iftype = type;
		priv->wdev.iftype = type;
		vif->iftype = WILC_GO_MODE;
		FUNC4(vif, FUNC3(vif),
					WILC_AP_MODE, vif->idx);
		break;

	default:
		FUNC1(dev, "Unknown interface type= %d\n", type);
		return -EINVAL;
	}

	return 0;
}