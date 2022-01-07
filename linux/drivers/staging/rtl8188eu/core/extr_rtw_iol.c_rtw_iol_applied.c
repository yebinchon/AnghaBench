
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fw_iol; } ;
struct adapter {TYPE_1__ registrypriv; } ;
struct TYPE_4__ {int ishighspeed; } ;


 TYPE_2__* adapter_to_dvobj (struct adapter*) ;

bool rtw_iol_applied(struct adapter *adapter)
{
 if (adapter->registrypriv.fw_iol == 1)
  return 1;

 if (adapter->registrypriv.fw_iol == 2 &&
     !adapter_to_dvobj(adapter)->ishighspeed)
  return 1;
 return 0;
}
