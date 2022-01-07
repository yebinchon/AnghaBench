
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_ht_info {scalar_t__ channel_type; } ;


 scalar_t__ NL80211_CHAN_NO_HT ;

__attribute__((used)) static inline int cw1200_is_ht(const struct cw1200_ht_info *ht_info)
{
 return ht_info->channel_type != NL80211_CHAN_NO_HT;
}
