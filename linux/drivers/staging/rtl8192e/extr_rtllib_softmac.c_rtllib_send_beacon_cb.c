
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct rtllib_device {int beacon_lock; } ;


 int beacon_timer ;
 struct rtllib_device* from_timer (int ,struct timer_list*,int ) ;
 struct rtllib_device* ieee ;
 int rtllib_send_beacon (struct rtllib_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rtllib_send_beacon_cb(struct timer_list *t)
{
 struct rtllib_device *ieee =
  from_timer(ieee, t, beacon_timer);
 unsigned long flags;

 spin_lock_irqsave(&ieee->beacon_lock, flags);
 rtllib_send_beacon(ieee);
 spin_unlock_irqrestore(&ieee->beacon_lock, flags);
}
