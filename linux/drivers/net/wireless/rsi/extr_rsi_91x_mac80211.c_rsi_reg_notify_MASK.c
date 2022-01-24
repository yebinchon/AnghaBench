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
struct wiphy {struct ieee80211_supported_band** bands; } ;
struct rsi_hw {int /*<<< orphan*/ * country; int /*<<< orphan*/  dfs_region; struct rsi_common* priv; } ;
struct rsi_common {int num_supp_bands; int /*<<< orphan*/  mutex; } ;
struct regulatory_request {int /*<<< orphan*/ * alpha2; int /*<<< orphan*/  dfs_region; } ;
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_hw {struct rsi_hw* priv; } ;
struct ieee80211_channel {int flags; } ;

/* Variables and functions */
 int IEEE80211_CHAN_DISABLED ; 
 int IEEE80211_CHAN_NO_IR ; 
 int IEEE80211_CHAN_RADAR ; 
 int /*<<< orphan*/  INFO_ZONE ; 
 size_t NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ieee80211_hw* FUNC4 (struct wiphy*) ; 

__attribute__((used)) static void FUNC5(struct wiphy *wiphy,
			   struct regulatory_request *request)
{
	struct ieee80211_supported_band *sband;
	struct ieee80211_channel *ch;
	struct ieee80211_hw *hw = FUNC4(wiphy);
	struct rsi_hw * adapter = hw->priv; 
	struct rsi_common *common = adapter->priv;
	int i;
	
	FUNC0(&common->mutex);

	FUNC2(INFO_ZONE, "country = %s dfs_region = %d\n",
		*request->alpha2, request->dfs_region);

	if (common->num_supp_bands > 1) {
		sband = wiphy->bands[NL80211_BAND_5GHZ];

		for (i = 0; i < sband->n_channels; i++) {
			ch = &sband->channels[i];
			if (ch->flags & IEEE80211_CHAN_DISABLED)
				continue;

			if (ch->flags & IEEE80211_CHAN_RADAR)
				ch->flags |= IEEE80211_CHAN_NO_IR;
		}
	}
	adapter->dfs_region = FUNC3(request->dfs_region);
	FUNC2(INFO_ZONE, "RSI region code = %d\n", adapter->dfs_region);
	
	adapter->country[0] = request->alpha2[0];
	adapter->country[1] = request->alpha2[1];

	FUNC1(&common->mutex);
}