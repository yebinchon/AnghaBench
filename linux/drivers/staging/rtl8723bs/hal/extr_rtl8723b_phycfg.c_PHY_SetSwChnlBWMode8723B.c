
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;
typedef enum CHANNEL_WIDTH { ____Placeholder_CHANNEL_WIDTH } CHANNEL_WIDTH ;


 int PHY_HandleSwChnlAndSetBW8723B (struct adapter*,int,int,int ,int,int ,int ,int ) ;

void PHY_SetSwChnlBWMode8723B(
 struct adapter *Adapter,
 u8 channel,
 enum CHANNEL_WIDTH Bandwidth,
 u8 Offset40,
 u8 Offset80
)
{


 PHY_HandleSwChnlAndSetBW8723B(Adapter, 1, 1, channel, Bandwidth, Offset40, Offset80, channel);


}
