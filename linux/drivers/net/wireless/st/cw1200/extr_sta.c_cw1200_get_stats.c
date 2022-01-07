
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_low_level_stats {int dummy; } ;
struct ieee80211_hw {struct cw1200_common* priv; } ;
struct cw1200_common {int stats; } ;


 int memcpy (struct ieee80211_low_level_stats*,int *,int) ;

int cw1200_get_stats(struct ieee80211_hw *dev,
       struct ieee80211_low_level_stats *stats)
{
 struct cw1200_common *priv = dev->priv;

 memcpy(stats, &priv->stats, sizeof(*stats));
 return 0;
}
