
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 int HW_VAR_RPT_TIMER_SETTING ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int *) ;

__attribute__((used)) static void rpt_timer_setting_wk_hdl(struct adapter *padapter, u16 min_time)
{
 rtw_hal_set_hwreg(padapter, HW_VAR_RPT_TIMER_SETTING, (u8 *)(&min_time));
}
