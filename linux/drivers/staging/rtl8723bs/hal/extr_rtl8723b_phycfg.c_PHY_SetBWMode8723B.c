
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_com_data {int CurrentChannel; } ;
struct adapter {int dummy; } ;
typedef enum CHANNEL_WIDTH { ____Placeholder_CHANNEL_WIDTH } CHANNEL_WIDTH ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int PHY_HandleSwChnlAndSetBW8723B (struct adapter*,int,int,int ,int,unsigned char,unsigned char,int ) ;

void PHY_SetBWMode8723B(
 struct adapter *Adapter,
 enum CHANNEL_WIDTH Bandwidth,
 unsigned char Offset
)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);

 PHY_HandleSwChnlAndSetBW8723B(Adapter, 0, 1, pHalData->CurrentChannel, Bandwidth, Offset, Offset, pHalData->CurrentChannel);
}
