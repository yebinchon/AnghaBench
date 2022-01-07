
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* EfusePowerSwitch ) (struct adapter*,int ,int ) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;


 int stub1 (struct adapter*,int ,int ) ;

void
Efuse_PowerSwitch(
struct adapter *padapter,
u8 bWrite,
u8 PwrState)
{
 padapter->HalFunc.EfusePowerSwitch(padapter, bWrite, PwrState);
}
