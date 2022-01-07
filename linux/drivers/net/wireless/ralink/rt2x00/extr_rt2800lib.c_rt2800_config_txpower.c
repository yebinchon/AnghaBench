
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;
struct ieee80211_channel {int dummy; } ;


 int RT3593 ;
 int RT3883 ;
 int RT6352 ;
 int rt2800_config_txpower_rt28xx (struct rt2x00_dev*,struct ieee80211_channel*,int) ;
 int rt2800_config_txpower_rt3593 (struct rt2x00_dev*,struct ieee80211_channel*,int) ;
 int rt2800_config_txpower_rt6352 (struct rt2x00_dev*,struct ieee80211_channel*,int) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int ) ;

__attribute__((used)) static void rt2800_config_txpower(struct rt2x00_dev *rt2x00dev,
      struct ieee80211_channel *chan,
      int power_level)
{
 if (rt2x00_rt(rt2x00dev, RT3593) ||
     rt2x00_rt(rt2x00dev, RT3883))
  rt2800_config_txpower_rt3593(rt2x00dev, chan, power_level);
 else if (rt2x00_rt(rt2x00dev, RT6352))
  rt2800_config_txpower_rt6352(rt2x00dev, chan, power_level);
 else
  rt2800_config_txpower_rt28xx(rt2x00dev, chan, power_level);
}
