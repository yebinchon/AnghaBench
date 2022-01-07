
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_com_data {int UsbRxHighSpeedMode; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int HalRxAggr8723BSdio (struct adapter*) ;
 int sdio_AggSettingRxUpdate (struct adapter*) ;

__attribute__((used)) static void _initSdioAggregationSetting(struct adapter *padapter)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);





 HalRxAggr8723BSdio(padapter);

 sdio_AggSettingRxUpdate(padapter);


 pHalData->UsbRxHighSpeedMode = 0;
}
