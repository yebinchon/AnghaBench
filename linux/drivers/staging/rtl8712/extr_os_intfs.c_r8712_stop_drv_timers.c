
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sitesurvey_ctrl_timer; } ;
struct TYPE_6__ {TYPE_1__ sitesurveyctrl; int wdg_timer; int dhcp_timer; int scan_to_timer; int assoc_timer; } ;
struct TYPE_5__ {int tkip_timer; } ;
struct _adapter {TYPE_3__ mlmepriv; TYPE_2__ securitypriv; } ;


 int del_timer_sync (int *) ;

void r8712_stop_drv_timers(struct _adapter *padapter)
{
 del_timer_sync(&padapter->mlmepriv.assoc_timer);
 del_timer_sync(&padapter->securitypriv.tkip_timer);
 del_timer_sync(&padapter->mlmepriv.scan_to_timer);
 del_timer_sync(&padapter->mlmepriv.dhcp_timer);
 del_timer_sync(&padapter->mlmepriv.wdg_timer);
 del_timer_sync(&padapter->mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer);
}
