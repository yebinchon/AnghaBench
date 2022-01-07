
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int rf_pwrstate; } ;
struct adapter {TYPE_2__* HalData; TYPE_1__ pwrctrlpriv; } ;
struct TYPE_4__ {int CurAntenna; int bMacPwrCtrlOn; int EfuseUsedBytes; int BasicRateSet; } ;


 int BIT (int ) ;
 int REG_HGQ_INFORMATION ;
 int REG_RCR ;
 int REG_TDECTRL ;
 int REG_TXPAUSE ;
 int rf_off ;
 int usb_read32 (struct adapter*,int ) ;
 int usb_read8 (struct adapter*,int ) ;

void rtw_hal_get_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
{
 switch (variable) {
 case 134:
  *((u16 *)(val)) = Adapter->HalData->BasicRateSet;

 case 128:
  val[0] = usb_read8(Adapter, REG_TXPAUSE);
  break;
 case 133:

  val[0] = (BIT(0) & usb_read8(Adapter, REG_TDECTRL + 2)) ? 1 : 0;
  break;
 case 129:
  {

   if (Adapter->pwrctrlpriv.rf_pwrstate == rf_off) {


    val[0] = 1;
   } else {
    u32 valRCR;

    valRCR = usb_read32(Adapter, REG_RCR);
    valRCR &= 0x00070000;
    if (valRCR)
     val[0] = 0;
    else
     val[0] = 1;
   }
  }
  break;
 case 131:
  val[0] = Adapter->HalData->CurAntenna;
  break;
 case 130:
  *((u16 *)(val)) = Adapter->HalData->EfuseUsedBytes;
  break;
 case 135:
  *val = Adapter->HalData->bMacPwrCtrlOn;
  break;
 case 132:
  *val = ((usb_read32(Adapter, REG_HGQ_INFORMATION) & 0x0000ff00) == 0) ? 1 : 0;
  break;
 default:
  break;
 }
}
