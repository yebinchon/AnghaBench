
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_6__ {int sitesurvey_ctrl_timer; } ;
struct TYPE_7__ {TYPE_2__ sitesurveyctrl; } ;
struct _adapter {TYPE_3__ mlmepriv; } ;
struct TYPE_5__ {int sitesurvey_ctrl_timer; } ;
struct TYPE_8__ {TYPE_1__ sitesurveyctrl; } ;


 int _r8712_sitesurvey_ctrl_handler (struct _adapter*) ;
 struct _adapter* adapter ;
 struct _adapter* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 TYPE_4__ mlmepriv ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;

__attribute__((used)) static void sitesurvey_ctrl_handler(struct timer_list *t)
{
 struct _adapter *adapter =
  from_timer(adapter, t,
      mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer);

 _r8712_sitesurvey_ctrl_handler(adapter);
 mod_timer(&adapter->mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer,
    jiffies + msecs_to_jiffies(3000));
}
