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
typedef  int /*<<< orphan*/  u32 ;
struct wiphy {int dummy; } ;
struct wilc_vif {int /*<<< orphan*/  ndev; } ;
struct wilc {int /*<<< orphan*/  vif_mutex; int /*<<< orphan*/  op_ch; } ;
struct cfg80211_chan_def {TYPE_1__* chan; } ;
struct TYPE_2__ {int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct wilc_vif*) ; 
 int FUNC1 (struct wilc_vif*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct wilc_vif* FUNC6 (struct wilc*) ; 
 int FUNC7 (struct wilc_vif*,int /*<<< orphan*/ ) ; 
 struct wilc* FUNC8 (struct wiphy*) ; 

__attribute__((used)) static int FUNC9(struct wiphy *wiphy,
		       struct cfg80211_chan_def *chandef)
{
	struct wilc *wl = FUNC8(wiphy);
	struct wilc_vif *vif;
	u32 channelnum;
	int result;

	FUNC3(&wl->vif_mutex);
	vif = FUNC6(wl);
	if (FUNC0(vif)) {
		FUNC4(&wl->vif_mutex);
		return FUNC1(vif);
	}

	channelnum = FUNC2(chandef->chan->center_freq);

	wl->op_ch = channelnum;
	result = FUNC7(vif, channelnum);
	if (result)
		FUNC5(vif->ndev, "Error in setting channel\n");

	FUNC4(&wl->vif_mutex);
	return result;
}