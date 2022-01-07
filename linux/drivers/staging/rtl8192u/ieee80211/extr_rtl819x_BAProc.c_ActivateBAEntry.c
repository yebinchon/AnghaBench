
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ieee80211_device {int dummy; } ;
struct ba_record {int valid; int timer; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;

__attribute__((used)) static void ActivateBAEntry(struct ieee80211_device *ieee, struct ba_record *pBA, u16 Time)
{
 pBA->valid = 1;
 if (Time != 0)
  mod_timer(&pBA->timer, jiffies + msecs_to_jiffies(Time));
}
