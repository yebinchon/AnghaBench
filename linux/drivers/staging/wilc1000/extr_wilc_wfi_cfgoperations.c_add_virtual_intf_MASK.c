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
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct TYPE_2__ {struct wireless_dev wdev; } ;
struct wilc_vif {int monitor_flag; TYPE_1__ priv; int /*<<< orphan*/  ndev; } ;
struct wilc {scalar_t__ vif_num; int /*<<< orphan*/  vif_mutex; struct wilc_vif** vif; } ;
struct vif_params {int dummy; } ;
struct net_device {int dummy; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 struct wireless_dev* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct wilc_vif*) ; 
#define  NL80211_IFTYPE_AP 129 
 int NL80211_IFTYPE_MONITOR ; 
#define  NL80211_IFTYPE_STATION 128 
 int FUNC2 (struct wilc_vif*) ; 
 int WILC_AP_MODE ; 
 int WILC_GO_MODE ; 
 scalar_t__ WILC_NUM_CONCURRENT_IFC ; 
 int WILC_STATION_MODE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct wilc*,int) ; 
 struct wilc_vif* FUNC7 (struct wilc*,char const*,int,int,int) ; 
 struct net_device* FUNC8 (struct wilc*,char const*,int /*<<< orphan*/ ) ; 
 struct wilc* FUNC9 (struct wiphy*) ; 

__attribute__((used)) static struct wireless_dev *FUNC10(struct wiphy *wiphy,
					     const char *name,
					     unsigned char name_assign_type,
					     enum nl80211_iftype type,
					     struct vif_params *params)
{
	struct wilc *wl = FUNC9(wiphy);
	struct wilc_vif *vif;
	struct wireless_dev *wdev;
	int iftype;
	int ret;

	if (type == NL80211_IFTYPE_MONITOR) {
		struct net_device *ndev;
		int ap_index = FUNC6(wl, WILC_AP_MODE);

		if (ap_index < 0) {
			ap_index = FUNC6(wl, WILC_GO_MODE);
			if (ap_index < 0)
				goto validate_interface;
		}

		vif  = wl->vif[ap_index];
		if (vif->monitor_flag)
			goto validate_interface;

		ndev = FUNC8(wl, name, vif->ndev);
		if (ndev)
			vif->monitor_flag = 1;
		else
			return FUNC0(-EINVAL);

		wdev = &vif->priv.wdev;
		return wdev;
	}

validate_interface:
	FUNC3(&wl->vif_mutex);
	if (wl->vif_num == WILC_NUM_CONCURRENT_IFC) {
		FUNC5("Reached maximum number of interface\n");
		ret = -EINVAL;
		goto out_err;
	}

	switch (type) {
	case NL80211_IFTYPE_STATION:
		iftype = WILC_STATION_MODE;
		break;
	case NL80211_IFTYPE_AP:
		iftype = WILC_AP_MODE;
		break;
	default:
		ret = -EOPNOTSUPP;
		goto out_err;
	}

	vif = FUNC7(wl, name, iftype, type, true);
	if (FUNC1(vif)) {
		ret = FUNC2(vif);
		goto out_err;
	}

	FUNC4(&wl->vif_mutex);

	return &vif->priv.wdev;

out_err:
	FUNC4(&wl->vif_mutex);
	return FUNC0(ret);
}