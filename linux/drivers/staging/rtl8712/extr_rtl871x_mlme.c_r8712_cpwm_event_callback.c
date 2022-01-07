
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct reportpwrstate_parm {int state; } ;
struct TYPE_2__ {scalar_t__ cpwm_tog; } ;
struct _adapter {TYPE_1__ pwrctrlpriv; } ;


 int r8712_cpwm_int_hdl (struct _adapter*,struct reportpwrstate_parm*) ;

void r8712_cpwm_event_callback(struct _adapter *adapter, u8 *pbuf)
{
 struct reportpwrstate_parm *preportpwrstate =
    (struct reportpwrstate_parm *)pbuf;

 preportpwrstate->state |= (u8)(adapter->pwrctrlpriv.cpwm_tog + 0x80);
 r8712_cpwm_int_hdl(adapter, preportpwrstate);
}
