
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int BTEfuseUsedPercentage; int BTEfuseUsedBytes; } ;
struct hal_com_data {int EfuseUsedPercentage; int EfuseUsedBytes; int bMacPwrCtrlOn; TYPE_1__ EfuseHal; } ;
struct adapter {int bSurpriseRemoved; } ;
struct TYPE_4__ {int rf_pwrstate; } ;


 int BIT (int) ;
 int BIT7 ;
 int BTEfuseUsedBytes ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int GetHwReg (struct adapter*,int,int*) ;
 int REG_RCR ;
 int REG_SYS_CLKR ;
 int REG_TDECTRL ;
 int REG_TXPAUSE ;
 int REG_TXPKT_EMPTY ;
 int REG_WOWLAN_WAKE_REASON ;
 int SDIO_LOCAL_BASE ;
 int SDIO_REG_HRPWM1 ;
 TYPE_2__* adapter_to_pwrctl (struct adapter*) ;
 int rf_off ;
 int rtw_read16 (struct adapter*,int ) ;
 int rtw_read32 (struct adapter*,int ) ;
 int rtw_read8 (struct adapter*,int) ;

void GetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 u8 val8;
 u16 val16;

 switch (variable) {
 case 129:
  *val = rtw_read8(padapter, REG_TXPAUSE);
  break;

 case 138:
  {

   val8 = rtw_read8(padapter, REG_TDECTRL+2);
   *val = (BIT(0) & val8) ? 1 : 0;
  }
  break;

 case 132:
  {

   u32 valRCR;

   if (
    padapter->bSurpriseRemoved ||
    (adapter_to_pwrctl(padapter)->rf_pwrstate == rf_off)
   ) {


    *val = 1;
   } else {
    valRCR = rtw_read32(padapter, REG_RCR);
    valRCR &= 0x00070000;
    if (valRCR)
     *val = 0;
    else
     *val = 1;
   }
  }
  break;

 case 133:
  *val = pHalData->EfuseUsedPercentage;
  break;

 case 134:
  *((u16 *)val) = pHalData->EfuseUsedBytes;
  break;

 case 135:



  break;

 case 136:



  *((u16 *)val) = BTEfuseUsedBytes;

  break;

 case 139:
  *val = pHalData->bMacPwrCtrlOn;
  break;
 case 137:
  val16 = rtw_read16(padapter, REG_TXPKT_EMPTY);
  *val = (val16 & BIT(10)) ? 1:0;
  break;
 default:
  GetHwReg(padapter, variable, val);
  break;
 }
}
