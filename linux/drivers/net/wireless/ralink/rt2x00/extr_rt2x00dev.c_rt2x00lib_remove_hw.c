
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int channels_info; } ;
struct rt2x00_dev {TYPE_2__ spec; TYPE_4__* hw; int flags; } ;
struct TYPE_8__ {TYPE_1__* wiphy; } ;
struct TYPE_7__ {int bitrates; int channels; } ;
struct TYPE_5__ {TYPE_3__** bands; } ;


 int DEVICE_STATE_REGISTERED_HW ;
 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 int ieee80211_unregister_hw (TYPE_4__*) ;
 int kfree (int ) ;
 scalar_t__ likely (TYPE_3__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rt2x00lib_remove_hw(struct rt2x00_dev *rt2x00dev)
{
 if (test_bit(DEVICE_STATE_REGISTERED_HW, &rt2x00dev->flags))
  ieee80211_unregister_hw(rt2x00dev->hw);

 if (likely(rt2x00dev->hw->wiphy->bands[NL80211_BAND_2GHZ])) {
  kfree(rt2x00dev->hw->wiphy->bands[NL80211_BAND_2GHZ]->channels);
  kfree(rt2x00dev->hw->wiphy->bands[NL80211_BAND_2GHZ]->bitrates);
  rt2x00dev->hw->wiphy->bands[NL80211_BAND_2GHZ] = ((void*)0);
  rt2x00dev->hw->wiphy->bands[NL80211_BAND_5GHZ] = ((void*)0);
 }

 kfree(rt2x00dev->spec.channels_info);
}
