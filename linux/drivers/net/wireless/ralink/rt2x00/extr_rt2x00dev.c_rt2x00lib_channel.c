
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int hw_value; int max_power; int max_antenna_gain; int band; int center_freq; } ;


 int NL80211_BAND_2GHZ ;
 int NL80211_BAND_5GHZ ;
 int ieee80211_channel_to_frequency (int const,int ) ;

__attribute__((used)) static void rt2x00lib_channel(struct ieee80211_channel *entry,
         const int channel, const int tx_power,
         const int value)
{

 entry->band = channel <= 14 ? NL80211_BAND_2GHZ : NL80211_BAND_5GHZ;
 entry->center_freq = ieee80211_channel_to_frequency(channel,
           entry->band);
 entry->hw_value = value;
 entry->max_power = tx_power;
 entry->max_antenna_gain = 0xff;
}
