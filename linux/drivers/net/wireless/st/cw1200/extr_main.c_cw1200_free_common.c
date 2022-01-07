
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int ieee80211_free_hw (struct ieee80211_hw*) ;

__attribute__((used)) static void cw1200_free_common(struct ieee80211_hw *dev)
{
 ieee80211_free_hw(dev);
}
