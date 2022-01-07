
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct ieee80211_device {int lock; TYPE_2__ crypt_deinit_timer; TYPE_1__* dev; int crypt_deinit_list; } ;
struct TYPE_3__ {int name; } ;


 scalar_t__ HZ ;
 int add_timer (TYPE_2__*) ;
 int crypt_deinit_timer ;
 struct ieee80211_device* from_timer (int ,struct timer_list*,int ) ;
 struct ieee80211_device* ieee ;
 int ieee80211_crypt_deinit_entries (struct ieee80211_device*,int ) ;
 scalar_t__ jiffies ;
 int list_empty (int *) ;
 int netdev_dbg (TYPE_1__*,char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ieee80211_crypt_deinit_handler(struct timer_list *t)
{
 struct ieee80211_device *ieee = from_timer(ieee, t, crypt_deinit_timer);
 unsigned long flags;

 spin_lock_irqsave(&ieee->lock, flags);
 ieee80211_crypt_deinit_entries(ieee, 0);
 if (!list_empty(&ieee->crypt_deinit_list)) {
  netdev_dbg(ieee->dev, "%s: entries remaining in delayed crypt deletion list\n",
    ieee->dev->name);
  ieee->crypt_deinit_timer.expires = jiffies + HZ;
  add_timer(&ieee->crypt_deinit_timer);
 }
 spin_unlock_irqrestore(&ieee->lock, flags);

}
