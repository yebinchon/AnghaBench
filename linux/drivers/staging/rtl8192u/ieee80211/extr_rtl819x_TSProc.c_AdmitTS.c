
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ts_common_info {int inact_timer; int setup_timer; } ;
struct ieee80211_device {int dummy; } ;


 int del_timer_sync (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;

__attribute__((used)) static void AdmitTS(struct ieee80211_device *ieee,
      struct ts_common_info *pTsCommonInfo, u32 InactTime)
{
 del_timer_sync(&pTsCommonInfo->setup_timer);
 del_timer_sync(&pTsCommonInfo->inact_timer);

 if (InactTime != 0)
  mod_timer(&pTsCommonInfo->inact_timer,
     jiffies + msecs_to_jiffies(InactTime));
}
