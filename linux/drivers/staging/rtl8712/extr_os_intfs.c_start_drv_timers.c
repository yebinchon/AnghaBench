
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sitesurvey_ctrl_timer; } ;
struct TYPE_4__ {int wdg_timer; TYPE_1__ sitesurveyctrl; } ;
struct _adapter {TYPE_2__ mlmepriv; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;

__attribute__((used)) static void start_drv_timers(struct _adapter *padapter)
{
 mod_timer(&padapter->mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer,
    jiffies + msecs_to_jiffies(5000));
 mod_timer(&padapter->mlmepriv.wdg_timer,
    jiffies + msecs_to_jiffies(2000));
}
