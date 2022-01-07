
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ieee80211_device {int beacon_lock; } ;


 int beacon_timer ;
 struct ieee80211_device* from_timer (int ,struct timer_list*,int ) ;
 struct ieee80211_device* ieee ;
 int ieee80211_send_beacon (struct ieee80211_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ieee80211_send_beacon_cb(struct timer_list *t)
{
 struct ieee80211_device *ieee =
  from_timer(ieee, t, beacon_timer);
 unsigned long flags;

 spin_lock_irqsave(&ieee->beacon_lock, flags);
 ieee80211_send_beacon(ieee);
 spin_unlock_irqrestore(&ieee->beacon_lock, flags);
}
