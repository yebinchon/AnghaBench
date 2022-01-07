
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int write_sa2400 (struct ieee80211_hw*,int,int ) ;

__attribute__((used)) static void sa2400_rf_stop(struct ieee80211_hw *dev)
{
 write_sa2400(dev, 4, 0);
}
