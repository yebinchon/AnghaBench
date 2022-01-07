
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ieee80211_device {int dummy; } ;


 int associate_timer ;
 struct ieee80211_device* dev ;
 struct ieee80211_device* from_timer (int ,struct timer_list*,int ) ;
 int ieee80211_associate_abort (struct ieee80211_device*) ;

__attribute__((used)) static void ieee80211_associate_abort_cb(struct timer_list *t)
{
 struct ieee80211_device *dev = from_timer(dev, t, associate_timer);

 ieee80211_associate_abort(dev);
}
