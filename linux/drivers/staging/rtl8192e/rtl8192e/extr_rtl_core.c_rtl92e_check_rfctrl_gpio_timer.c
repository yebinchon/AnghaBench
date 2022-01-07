
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct r8192_priv {int polling_timer_on; int gpio_polling_timer; int gpio_change_rf_wq; } ;


 int RTLLIB_WATCH_DOG_TIME ;
 struct r8192_priv* from_timer (int ,struct timer_list*,int ) ;
 int gpio_polling_timer ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct r8192_priv* priv ;
 int schedule_delayed_work (int *,int ) ;

void rtl92e_check_rfctrl_gpio_timer(struct timer_list *t)
{
 struct r8192_priv *priv = from_timer(priv, t, gpio_polling_timer);

 priv->polling_timer_on = 1;

 schedule_delayed_work(&priv->gpio_change_rf_wq, 0);

 mod_timer(&priv->gpio_polling_timer, jiffies +
    msecs_to_jiffies(RTLLIB_WATCH_DOG_TIME));
}
