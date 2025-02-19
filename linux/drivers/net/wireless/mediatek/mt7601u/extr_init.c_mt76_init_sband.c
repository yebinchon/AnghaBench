
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * chan; } ;
struct mt7601u_dev {TYPE_2__ chandef; int dev; } ;
struct TYPE_3__ {int* rx_mask; int tx_params; } ;
struct ieee80211_sta_ht_cap {int ht_supported; int cap; int ampdu_density; int ampdu_factor; TYPE_1__ mcs; } ;
struct ieee80211_supported_band {int n_channels; int n_bitrates; int * channels; struct ieee80211_sta_ht_cap ht_cap; struct ieee80211_rate* bitrates; } ;
struct ieee80211_rate {int dummy; } ;
struct ieee80211_channel {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IEEE80211_HT_CAP_GRN_FLD ;
 int IEEE80211_HT_CAP_RX_STBC_SHIFT ;
 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 int IEEE80211_HT_MAX_AMPDU_64K ;
 int IEEE80211_HT_MCS_TX_DEFINED ;
 int IEEE80211_HT_MPDU_DENSITY_2 ;
 void* devm_kmemdup (int ,struct ieee80211_channel const*,int,int ) ;

__attribute__((used)) static int
mt76_init_sband(struct mt7601u_dev *dev, struct ieee80211_supported_band *sband,
  const struct ieee80211_channel *chan, int n_chan,
  struct ieee80211_rate *rates, int n_rates)
{
 struct ieee80211_sta_ht_cap *ht_cap;
 void *chanlist;
 int size;

 size = n_chan * sizeof(*chan);
 chanlist = devm_kmemdup(dev->dev, chan, size, GFP_KERNEL);
 if (!chanlist)
  return -ENOMEM;

 sband->channels = chanlist;
 sband->n_channels = n_chan;
 sband->bitrates = rates;
 sband->n_bitrates = n_rates;

 ht_cap = &sband->ht_cap;
 ht_cap->ht_supported = 1;
 ht_cap->cap = IEEE80211_HT_CAP_SUP_WIDTH_20_40 |
        IEEE80211_HT_CAP_GRN_FLD |
        IEEE80211_HT_CAP_SGI_20 |
        IEEE80211_HT_CAP_SGI_40 |
        (1 << IEEE80211_HT_CAP_RX_STBC_SHIFT);

 ht_cap->mcs.rx_mask[0] = 0xff;
 ht_cap->mcs.rx_mask[4] = 0x1;
 ht_cap->mcs.tx_params = IEEE80211_HT_MCS_TX_DEFINED;
 ht_cap->ampdu_factor = IEEE80211_HT_MAX_AMPDU_64K;
 ht_cap->ampdu_density = IEEE80211_HT_MPDU_DENSITY_2;

 dev->chandef.chan = &sband->channels[0];

 return 0;
}
