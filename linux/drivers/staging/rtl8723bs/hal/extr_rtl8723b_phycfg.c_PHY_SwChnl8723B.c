
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int PHY_HandleSwChnlAndSetBW8723B (struct adapter*,int,int,int ,int ,int ,int ,int ) ;

void PHY_SwChnl8723B(struct adapter *Adapter, u8 channel)
{
 PHY_HandleSwChnlAndSetBW8723B(Adapter, 1, 0, channel, 0, 0, 0, channel);
}
