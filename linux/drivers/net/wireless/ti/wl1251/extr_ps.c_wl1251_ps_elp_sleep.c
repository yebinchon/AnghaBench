
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {scalar_t__ station_mode; int elp_work; int hw; } ;


 int ELP_ENTRY_DELAY ;
 scalar_t__ STATION_ACTIVE_MODE ;
 int ieee80211_queue_delayed_work (int ,int *,unsigned long) ;
 unsigned long msecs_to_jiffies (int ) ;

void wl1251_ps_elp_sleep(struct wl1251 *wl)
{
 unsigned long delay;

 if (wl->station_mode != STATION_ACTIVE_MODE) {
  delay = msecs_to_jiffies(ELP_ENTRY_DELAY);
  ieee80211_queue_delayed_work(wl->hw, &wl->elp_work, delay);
 }
}
