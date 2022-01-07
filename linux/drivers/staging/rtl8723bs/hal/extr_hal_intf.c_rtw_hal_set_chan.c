
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* set_channel_handler ) (struct adapter*,int ) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;


 int stub1 (struct adapter*,int ) ;

void rtw_hal_set_chan(struct adapter *padapter, u8 channel)
{
 if (padapter->HalFunc.set_channel_handler)
  padapter->HalFunc.set_channel_handler(padapter, channel);
}
