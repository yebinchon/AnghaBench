
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hal_com_data {int* sdio_tx_max_len; } ;
struct dvobj_priv {int dummy; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 size_t HI_QUEUE_IDX ;
 size_t LOW_QUEUE_IDX ;
 size_t MID_QUEUE_IDX ;



 struct dvobj_priv* adapter_to_dvobj (struct adapter*) ;
 int ffaddr2deviceId (struct dvobj_priv*,int ) ;

u32 rtw_hal_get_sdio_tx_max_length(struct adapter *padapter, u8 queue_idx)
{
 struct dvobj_priv *pdvobjpriv = adapter_to_dvobj(padapter);
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 u32 deviceId, max_len;


 deviceId = ffaddr2deviceId(pdvobjpriv, queue_idx);
 switch (deviceId) {
 case 130:
  max_len = pHalData->sdio_tx_max_len[HI_QUEUE_IDX];
  break;

 case 128:
  max_len = pHalData->sdio_tx_max_len[MID_QUEUE_IDX];
  break;

 case 129:
  max_len = pHalData->sdio_tx_max_len[LOW_QUEUE_IDX];
  break;

 default:
  max_len = pHalData->sdio_tx_max_len[MID_QUEUE_IDX];
  break;
 }

 return max_len;
}
