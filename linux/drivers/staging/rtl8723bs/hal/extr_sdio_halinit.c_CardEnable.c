
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct adapter {int dummy; } ;


 int HW_VAR_APFM_ON_MAC ;
 scalar_t__ HalPwrSeqCmdParsing (struct adapter*,int ,int ,int ,int ) ;
 int PWR_CUT_ALL_MSK ;
 int PWR_FAB_ALL_MSK ;
 int PWR_INTF_SDIO_MSK ;
 int REG_RSV_CTRL ;
 scalar_t__ _FAIL ;
 scalar_t__ _SUCCESS ;
 int rtl8723B_card_enable_flow ;
 int rtw_hal_get_hwreg (struct adapter*,int ,scalar_t__*) ;
 int rtw_hal_set_hwreg (struct adapter*,int ,scalar_t__*) ;
 int rtw_write8 (struct adapter*,int ,int) ;

__attribute__((used)) static u8 CardEnable(struct adapter *padapter)
{
 u8 bMacPwrCtrlOn;
 u8 ret = _FAIL;


 rtw_hal_get_hwreg(padapter, HW_VAR_APFM_ON_MAC, &bMacPwrCtrlOn);
 if (!bMacPwrCtrlOn) {


  rtw_write8(padapter, REG_RSV_CTRL, 0x0);

  ret = HalPwrSeqCmdParsing(padapter, PWR_CUT_ALL_MSK, PWR_FAB_ALL_MSK, PWR_INTF_SDIO_MSK, rtl8723B_card_enable_flow);
  if (ret == _SUCCESS) {
   u8 bMacPwrCtrlOn = 1;
   rtw_hal_set_hwreg(padapter, HW_VAR_APFM_ON_MAC, &bMacPwrCtrlOn);
  }
 } else
  ret = _SUCCESS;

 return ret;
}
