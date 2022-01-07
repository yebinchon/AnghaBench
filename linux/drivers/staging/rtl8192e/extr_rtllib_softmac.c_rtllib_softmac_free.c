
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {int ps_task; int wx_mutex; int wx_sync_scan_wq; int ips_leave_wq; int associate_complete_wq; int link_change_wq; int hw_sleep_wq; int hw_wakeup_wq; int start_ibss_wq; int softmac_scan_wq; int associate_procedure_wq; int associate_retry_wq; int associate_timer; int * dot11d_info; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tasklet_kill (int *) ;

void rtllib_softmac_free(struct rtllib_device *ieee)
{
 mutex_lock(&ieee->wx_mutex);
 kfree(ieee->dot11d_info);
 ieee->dot11d_info = ((void*)0);
 del_timer_sync(&ieee->associate_timer);

 cancel_delayed_work_sync(&ieee->associate_retry_wq);
 cancel_delayed_work_sync(&ieee->associate_procedure_wq);
 cancel_delayed_work_sync(&ieee->softmac_scan_wq);
 cancel_delayed_work_sync(&ieee->start_ibss_wq);
 cancel_delayed_work_sync(&ieee->hw_wakeup_wq);
 cancel_delayed_work_sync(&ieee->hw_sleep_wq);
 cancel_delayed_work_sync(&ieee->link_change_wq);
 cancel_work_sync(&ieee->associate_complete_wq);
 cancel_work_sync(&ieee->ips_leave_wq);
 cancel_work_sync(&ieee->wx_sync_scan_wq);
 mutex_unlock(&ieee->wx_mutex);
 tasklet_kill(&ieee->ps_task);
}
