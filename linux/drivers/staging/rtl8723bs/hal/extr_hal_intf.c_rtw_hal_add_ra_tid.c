
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int (* Add_RateATid ) (struct adapter*,int ,int *,int ) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;


 int stub1 (struct adapter*,int ,int *,int ) ;

void rtw_hal_add_ra_tid(struct adapter *padapter, u32 bitmap, u8 *arg, u8 rssi_level)
{
 if (padapter->HalFunc.Add_RateATid)
  padapter->HalFunc.Add_RateATid(padapter, bitmap, arg, rssi_level);
}
