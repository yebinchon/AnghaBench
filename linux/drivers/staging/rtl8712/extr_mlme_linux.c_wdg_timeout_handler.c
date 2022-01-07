
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_3__ {int wdg_timer; } ;
struct _adapter {TYPE_1__ mlmepriv; } ;
struct TYPE_4__ {int wdg_timer; } ;


 struct _adapter* adapter ;
 struct _adapter* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 TYPE_2__ mlmepriv ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int r8712_wdg_wk_cmd (struct _adapter*) ;

__attribute__((used)) static void wdg_timeout_handler (struct timer_list *t)
{
 struct _adapter *adapter =
  from_timer(adapter, t, mlmepriv.wdg_timer);

 r8712_wdg_wk_cmd(adapter);

 mod_timer(&adapter->mlmepriv.wdg_timer,
    jiffies + msecs_to_jiffies(2000));
}
