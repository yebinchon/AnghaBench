
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_com_data {int RegFwHwTxQCtrl; int RegReg542; } ;
struct adapter {int dummy; } ;


 int BIT (int) ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 scalar_t__ REG_FWHW_TXQ_CTRL ;
 scalar_t__ REG_TBTT_PROHIBIT ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_info_ ;
 int _module_hci_hal_init_c_ ;
 int rtw_write8 (struct adapter*,scalar_t__,int) ;

__attribute__((used)) static void ResumeTxBeacon(struct adapter *padapter)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);





 RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("+ResumeTxBeacon\n"));

 pHalData->RegFwHwTxQCtrl |= BIT(6);
 rtw_write8(padapter, REG_FWHW_TXQ_CTRL+2, pHalData->RegFwHwTxQCtrl);
 rtw_write8(padapter, REG_TBTT_PROHIBIT+1, 0xff);
 pHalData->RegReg542 |= BIT(0);
 rtw_write8(padapter, REG_TBTT_PROHIBIT+2, pHalData->RegReg542);
}
