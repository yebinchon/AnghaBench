
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* set_chnl_bw_handler ) (struct adapter*,int ,int,int ,int ) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;
typedef enum CHANNEL_WIDTH { ____Placeholder_CHANNEL_WIDTH } CHANNEL_WIDTH ;


 int stub1 (struct adapter*,int ,int,int ,int ) ;

void rtw_hal_set_chnl_bw(struct adapter *padapter, u8 channel,
    enum CHANNEL_WIDTH Bandwidth, u8 Offset40, u8 Offset80)
{
 if (padapter->HalFunc.set_chnl_bw_handler)
  padapter->HalFunc.set_chnl_bw_handler(padapter, channel,
            Bandwidth, Offset40,
            Offset80);
}
