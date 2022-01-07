
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct r8192_priv {int watch_dog_timer; int watch_dog_wq; } ;


 int IEEE80211_WATCH_DOG_TIME ;
 struct r8192_priv* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct r8192_priv* priv ;
 int schedule_delayed_work (int *,int ) ;
 int watch_dog_timer ;

__attribute__((used)) static void watch_dog_timer_callback(struct timer_list *t)
{
 struct r8192_priv *priv = from_timer(priv, t, watch_dog_timer);

 schedule_delayed_work(&priv->watch_dog_wq, 0);
 mod_timer(&priv->watch_dog_timer,
    jiffies + msecs_to_jiffies(IEEE80211_WATCH_DOG_TIME));
}
