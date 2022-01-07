
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_3__ {int watchdog_timer; int watchdog_wq; int rtl_wq; } ;
struct rtl_priv {TYPE_1__ works; } ;
struct TYPE_4__ {int watchdog_timer; } ;


 scalar_t__ MSECS (int ) ;
 int RTL_WATCH_DOG_TIME ;
 struct rtl_priv* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int queue_delayed_work (int ,int *,int ) ;
 struct rtl_priv* rtlpriv ;
 TYPE_2__ works ;

void rtl_watch_dog_timer_callback(struct timer_list *t)
{
 struct rtl_priv *rtlpriv = from_timer(rtlpriv, t, works.watchdog_timer);

 queue_delayed_work(rtlpriv->works.rtl_wq,
      &rtlpriv->works.watchdog_wq, 0);

 mod_timer(&rtlpriv->works.watchdog_timer,
    jiffies + MSECS(RTL_WATCH_DOG_TIME));
}
