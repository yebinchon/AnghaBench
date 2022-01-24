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
struct wireless_dev {scalar_t__ iftype; int /*<<< orphan*/  netdev; } ;
struct wiphy {int dummy; } ;
struct wilc_vif {int idx; int /*<<< orphan*/  iftype; scalar_t__ monitor_flag; int /*<<< orphan*/  ndev; } ;
struct wilc {int vif_num; int /*<<< orphan*/  vif_mutex; struct wilc_vif** vif; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_P2P_GO ; 
 int /*<<< orphan*/  FUNC0 (struct wiphy*,struct wireless_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct wilc_vif* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wilc_vif*) ; 
 int /*<<< orphan*/  FUNC6 (struct wilc_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wilc*,int) ; 
 struct wilc* FUNC8 (struct wiphy*) ; 

__attribute__((used)) static int FUNC9(struct wiphy *wiphy, struct wireless_dev *wdev)
{
	struct wilc *wl = FUNC8(wiphy);
	struct wilc_vif *vif;
	int i;

	if (wdev->iftype == NL80211_IFTYPE_AP ||
	    wdev->iftype == NL80211_IFTYPE_P2P_GO)
		FUNC7(wl, true);
	vif = FUNC3(wdev->netdev);
	FUNC0(wiphy, wdev, GFP_KERNEL);
	FUNC4(vif->ndev);
	vif->monitor_flag = 0;

	FUNC1(&wl->vif_mutex);
	FUNC6(vif, 0, 0, 0);
	for (i = vif->idx; i < wl->vif_num; i++) {
		if ((i + 1) >= wl->vif_num) {
			wl->vif[i] = NULL;
		} else {
			vif = wl->vif[i + 1];
			vif->idx = i;
			wl->vif[i] = vif;
			FUNC6(vif, FUNC5(vif),
						vif->iftype, vif->idx);
		}
	}
	wl->vif_num--;
	FUNC2(&wl->vif_mutex);

	return 0;
}