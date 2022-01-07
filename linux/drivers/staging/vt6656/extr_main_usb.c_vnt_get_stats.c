
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int low_stats; } ;
struct ieee80211_low_level_stats {int dummy; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;


 int memcpy (struct ieee80211_low_level_stats*,int *,int) ;

__attribute__((used)) static int vnt_get_stats(struct ieee80211_hw *hw,
    struct ieee80211_low_level_stats *stats)
{
 struct vnt_private *priv = hw->priv;

 memcpy(stats, &priv->low_stats, sizeof(*stats));

 return 0;
}
