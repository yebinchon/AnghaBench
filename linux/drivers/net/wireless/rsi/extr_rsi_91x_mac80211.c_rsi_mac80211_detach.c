
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsi_hw {int dfsentry; struct ieee80211_supported_band* sbands; struct ieee80211_hw* hw; } ;
struct ieee80211_supported_band {int channels; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int NUM_NL80211_BANDS ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ieee80211_stop_queues (struct ieee80211_hw*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int kfree (int ) ;
 int rsi_remove_dbgfs (struct rsi_hw*) ;

void rsi_mac80211_detach(struct rsi_hw *adapter)
{
 struct ieee80211_hw *hw = adapter->hw;
 enum nl80211_band band;

 if (hw) {
  ieee80211_stop_queues(hw);
  ieee80211_unregister_hw(hw);
  ieee80211_free_hw(hw);
  adapter->hw = ((void*)0);
 }

 for (band = 0; band < NUM_NL80211_BANDS; band++) {
  struct ieee80211_supported_band *sband =
     &adapter->sbands[band];

  kfree(sband->channels);
 }





}
