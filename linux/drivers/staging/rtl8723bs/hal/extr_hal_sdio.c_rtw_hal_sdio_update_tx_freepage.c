
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct hal_com_data {size_t* SdioTxFIFOFreePage; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 size_t PUBLIC_QUEUE_IDX ;

void rtw_hal_sdio_update_tx_freepage(
 struct adapter *padapter, u8 PageIdx, u8 RequiredPageNum
)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 u8 DedicatedPgNum = 0;
 u8 RequiredPublicFreePgNum = 0;




 DedicatedPgNum = pHalData->SdioTxFIFOFreePage[PageIdx];
 if (RequiredPageNum <= DedicatedPgNum) {
  pHalData->SdioTxFIFOFreePage[PageIdx] -= RequiredPageNum;
 } else {
  pHalData->SdioTxFIFOFreePage[PageIdx] = 0;
  RequiredPublicFreePgNum = RequiredPageNum - DedicatedPgNum;
  pHalData->SdioTxFIFOFreePage[PUBLIC_QUEUE_IDX] -= RequiredPublicFreePgNum;
 }


}
