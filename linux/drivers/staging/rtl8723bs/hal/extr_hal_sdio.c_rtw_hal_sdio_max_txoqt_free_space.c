
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hal_com_data {int SdioTxOQTMaxFreeSpace; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;

u8 rtw_hal_sdio_max_txoqt_free_space(struct adapter *padapter)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);

 if (pHalData->SdioTxOQTMaxFreeSpace < 8)
  pHalData->SdioTxOQTMaxFreeSpace = 8;

 return pHalData->SdioTxOQTMaxFreeSpace;
}
