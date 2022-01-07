
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adapter {int dummy; } ;
typedef int s32 ;
struct TYPE_2__ {int bDisableSWChannelPlan; } ;


 TYPE_1__* GET_HAL_DATA (struct adapter*) ;

s32 rtw_hal_is_disable_sw_channel_plan(struct adapter *padapter)
{
 return GET_HAL_DATA(padapter)->bDisableSWChannelPlan;
}
