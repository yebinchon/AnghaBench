
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int rtl8xxxu_set_rts_threshold(struct ieee80211_hw *hw, u32 rts)
{
 if (rts > 2347)
  return -EINVAL;

 return 0;
}
