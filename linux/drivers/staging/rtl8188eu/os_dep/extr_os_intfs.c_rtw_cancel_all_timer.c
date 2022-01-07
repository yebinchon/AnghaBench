
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int signal_stat_timer; } ;
struct TYPE_4__ {int pwr_state_check_timer; } ;
struct TYPE_6__ {int dynamic_chk_timer; int scan_to_timer; int assoc_timer; } ;
struct adapter {TYPE_2__ recvpriv; TYPE_1__ pwrctrlpriv; TYPE_3__ mlmepriv; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _drv_info_ ;
 int _module_os_intfs_c_ ;
 int del_timer_sync (int *) ;
 int rtw_hal_sw_led_deinit (struct adapter*) ;

void rtw_cancel_all_timer(struct adapter *padapter)
{
 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_cancel_all_timer\n"));

 del_timer_sync(&padapter->mlmepriv.assoc_timer);
 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel association timer complete!\n"));

 del_timer_sync(&padapter->mlmepriv.scan_to_timer);
 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel scan_to_timer!\n"));

 del_timer_sync(&padapter->mlmepriv.dynamic_chk_timer);
 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel dynamic_chk_timer!\n"));


 rtw_hal_sw_led_deinit(padapter);
 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("rtw_cancel_all_timer:cancel DeInitSwLeds!\n"));

 del_timer_sync(&padapter->pwrctrlpriv.pwr_state_check_timer);

 del_timer_sync(&padapter->recvpriv.signal_stat_timer);
}
