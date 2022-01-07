
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hal_com_data {int dummy; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int REG_RXDMA_MODE_CTRL_8723B ;
 int REG_TRXDMA_CTRL ;
 int RXDMA_AGG_EN ;
 int RXDMA_AGG_MODE_EN ;
 int rtw_read8 (struct adapter*,int ) ;
 int rtw_write8 (struct adapter*,int ,int) ;

__attribute__((used)) static void sdio_AggSettingRxUpdate(struct adapter *padapter)
{
 struct hal_com_data *pHalData;
 u8 valueDMA;
 u8 valueRxAggCtrl = 0;
 u8 aggBurstNum = 3;
 u8 aggBurstSize = 0;

 pHalData = GET_HAL_DATA(padapter);

 valueDMA = rtw_read8(padapter, REG_TRXDMA_CTRL);
 valueDMA |= RXDMA_AGG_EN;
 rtw_write8(padapter, REG_TRXDMA_CTRL, valueDMA);

 valueRxAggCtrl |= RXDMA_AGG_MODE_EN;
 valueRxAggCtrl |= ((aggBurstNum << 2) & 0x0C);
 valueRxAggCtrl |= ((aggBurstSize << 4) & 0x30);
 rtw_write8(padapter, REG_RXDMA_MODE_CTRL_8723B, valueRxAggCtrl);
}
