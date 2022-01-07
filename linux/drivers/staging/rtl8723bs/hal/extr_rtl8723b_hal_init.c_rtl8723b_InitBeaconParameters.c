
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hal_com_data {void* RegCR_1; void* RegReg542; void* RegFwHwTxQCtrl; void* RegTxPause; void* RegBcnCtrlVal; } ;
struct adapter {int mlmepriv; } ;


 int BCN_DMA_ATIME_INT_TIME_8723B ;
 int DIS_TSF_UDT ;
 int DRIVER_EARLY_INT_TIME_8723B ;
 int EN_BCN_FUNCTION ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int REG_BCNDMATIM ;
 scalar_t__ REG_BCNTCFG ;
 scalar_t__ REG_BCN_CTRL ;
 scalar_t__ REG_CR ;
 int REG_DRVERLYINT ;
 scalar_t__ REG_FWHW_TXQ_CTRL ;
 scalar_t__ REG_TBTT_PROHIBIT ;
 scalar_t__ REG_TXPAUSE ;
 int WIFI_STATION_STATE ;
 int check_fwstate (int *,int ) ;
 void* rtw_read8 (struct adapter*,scalar_t__) ;
 int rtw_write16 (struct adapter*,scalar_t__,int) ;
 int rtw_write8 (struct adapter*,int ,int ) ;

void rtl8723b_InitBeaconParameters(struct adapter *padapter)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 u16 val16;
 u8 val8;


 val8 = DIS_TSF_UDT;
 val16 = val8 | (val8 << 8);


 val16 |= EN_BCN_FUNCTION;

 rtw_write16(padapter, REG_BCN_CTRL, val16);


 rtw_write16(padapter, REG_TBTT_PROHIBIT, 0x6404);


 if (check_fwstate(&padapter->mlmepriv, WIFI_STATION_STATE) == 0)
  rtw_write8(padapter, REG_DRVERLYINT, DRIVER_EARLY_INT_TIME_8723B);
 rtw_write8(padapter, REG_BCNDMATIM, BCN_DMA_ATIME_INT_TIME_8723B);



 rtw_write16(padapter, REG_BCNTCFG, 0x660F);

 pHalData->RegBcnCtrlVal = rtw_read8(padapter, REG_BCN_CTRL);
 pHalData->RegTxPause = rtw_read8(padapter, REG_TXPAUSE);
 pHalData->RegFwHwTxQCtrl = rtw_read8(padapter, REG_FWHW_TXQ_CTRL+2);
 pHalData->RegReg542 = rtw_read8(padapter, REG_TBTT_PROHIBIT+2);
 pHalData->RegCR_1 = rtw_read8(padapter, REG_CR+1);
}
