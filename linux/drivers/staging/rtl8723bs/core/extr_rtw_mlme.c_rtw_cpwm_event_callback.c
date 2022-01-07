
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct reportpwrstate_parm {int state; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {scalar_t__ cpwm_tog; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _drv_err_ ;
 int _module_rtl871x_mlme_c_ ;
 TYPE_1__* adapter_to_pwrctl (struct adapter*) ;
 int cpwm_int_hdl (struct adapter*,struct reportpwrstate_parm*) ;

void rtw_cpwm_event_callback(struct adapter *padapter, u8 *pbuf)
{
 struct reportpwrstate_parm *preportpwrstate;

 RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("+rtw_cpwm_event_callback !!!\n"));
 preportpwrstate = (struct reportpwrstate_parm *)pbuf;
 preportpwrstate->state |= (u8)(adapter_to_pwrctl(padapter)->cpwm_tog + 0x80);
 cpwm_int_hdl(padapter, preportpwrstate);
}
