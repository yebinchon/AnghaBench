
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct ieee80211_channel* chan; } ;
struct TYPE_4__ {TYPE_1__ chandef; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;
struct ieee80211_channel {int flags; scalar_t__ dfs_state; } ;


 int IEEE80211_CHAN_RADAR ;
 scalar_t__ NL80211_DFS_AVAILABLE ;

__attribute__((used)) static inline bool mt76x2_channel_silent(struct mt76x02_dev *dev)
{
 struct ieee80211_channel *chan = dev->mt76.chandef.chan;

 return ((chan->flags & IEEE80211_CHAN_RADAR) &&
  chan->dfs_state != NL80211_DFS_AVAILABLE);
}
