
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {struct ieee80211_supported_band** bands; } ;
struct rsi_hw {int * country; int dfs_region; struct rsi_common* priv; } ;
struct rsi_common {int num_supp_bands; int mutex; } ;
struct regulatory_request {int * alpha2; int dfs_region; } ;
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_hw {struct rsi_hw* priv; } ;
struct ieee80211_channel {int flags; } ;


 int IEEE80211_CHAN_DISABLED ;
 int IEEE80211_CHAN_NO_IR ;
 int IEEE80211_CHAN_RADAR ;
 int INFO_ZONE ;
 size_t NL80211_BAND_5GHZ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rsi_dbg (int ,char*,int ,...) ;
 int rsi_map_region_code (int ) ;
 struct ieee80211_hw* wiphy_to_ieee80211_hw (struct wiphy*) ;

__attribute__((used)) static void rsi_reg_notify(struct wiphy *wiphy,
      struct regulatory_request *request)
{
 struct ieee80211_supported_band *sband;
 struct ieee80211_channel *ch;
 struct ieee80211_hw *hw = wiphy_to_ieee80211_hw(wiphy);
 struct rsi_hw * adapter = hw->priv;
 struct rsi_common *common = adapter->priv;
 int i;

 mutex_lock(&common->mutex);

 rsi_dbg(INFO_ZONE, "country = %s dfs_region = %d\n",
  request->alpha2, request->dfs_region);

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
 adapter->dfs_region = rsi_map_region_code(request->dfs_region);
 rsi_dbg(INFO_ZONE, "RSI region code = %d\n", adapter->dfs_region);

 adapter->country[0] = request->alpha2[0];
 adapter->country[1] = request->alpha2[1];

 mutex_unlock(&common->mutex);
}
