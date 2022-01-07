
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int dummy; } ;
struct ba_record {int valid; int timer; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static void DeActivateBAEntry(struct ieee80211_device *ieee, struct ba_record *pBA)
{
 pBA->valid = 0;
 del_timer_sync(&pBA->timer);
}
