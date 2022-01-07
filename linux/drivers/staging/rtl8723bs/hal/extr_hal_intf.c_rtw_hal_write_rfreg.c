
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* write_rfreg ) (struct adapter*,int ,int ,int ,int ) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;


 int stub1 (struct adapter*,int ,int ,int ,int ) ;

void rtw_hal_write_rfreg(struct adapter *padapter, u32 eRFPath, u32 RegAddr, u32 BitMask, u32 Data)
{
 if (padapter->HalFunc.write_rfreg)
  padapter->HalFunc.write_rfreg(padapter, eRFPath, RegAddr, BitMask, Data);
}
