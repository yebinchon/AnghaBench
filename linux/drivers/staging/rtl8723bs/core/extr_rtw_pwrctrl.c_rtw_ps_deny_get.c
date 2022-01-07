
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int ps_deny; } ;


 TYPE_1__* adapter_to_pwrctl (struct adapter*) ;

u32 rtw_ps_deny_get(struct adapter *padapter)
{
 u32 deny;


 deny = adapter_to_pwrctl(padapter)->ps_deny;

 return deny;
}
