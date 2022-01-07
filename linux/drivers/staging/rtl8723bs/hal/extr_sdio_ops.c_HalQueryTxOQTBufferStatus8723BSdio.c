
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_com_data {int SdioTxOQTFreeSpace; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int SDIO_REG_OQT_FREE_PG ;
 int SdioLocalCmd52Read1Byte (struct adapter*,int ) ;

void HalQueryTxOQTBufferStatus8723BSdio(struct adapter *adapter)
{
 struct hal_com_data *haldata = GET_HAL_DATA(adapter);

 haldata->SdioTxOQTFreeSpace = SdioLocalCmd52Read1Byte(adapter, SDIO_REG_OQT_FREE_PG);
}
