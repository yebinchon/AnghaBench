
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_4__ {int ishighspeed; } ;
struct TYPE_3__ {int* IntrMask; } ;


 int IMR_CPWM2_88E ;
 int IMR_CPWM_88E ;
 int IMR_PSTIMEOUT_88E ;
 int IMR_RXERR_88E ;
 int IMR_RXFOVW_88E ;
 int IMR_TBDER_88E ;
 int IMR_TXERR_88E ;
 int IMR_TXFOVW_88E ;
 int INT_BULK_SEL ;
 int REG_HIMRE_88E ;
 int REG_HIMR_88E ;
 int REG_HISR_88E ;
 int REG_USB_SPECIAL_OPTION ;
 TYPE_2__* adapter_to_dvobj (struct adapter*) ;
 int usb_read8 (struct adapter*,int ) ;
 int usb_write32 (struct adapter*,int ,int) ;
 int usb_write8 (struct adapter*,int ,int) ;

__attribute__((used)) static void _InitInterrupt(struct adapter *Adapter)
{
 u32 imr, imr_ex;
 u8 usb_opt;


 usb_write32(Adapter, REG_HISR_88E, 0xFFFFFFFF);

 imr = IMR_PSTIMEOUT_88E | IMR_TBDER_88E | IMR_CPWM_88E | IMR_CPWM2_88E;
 usb_write32(Adapter, REG_HIMR_88E, imr);
 Adapter->HalData->IntrMask[0] = imr;

 imr_ex = IMR_TXERR_88E | IMR_RXERR_88E | IMR_TXFOVW_88E | IMR_RXFOVW_88E;
 usb_write32(Adapter, REG_HIMRE_88E, imr_ex);
 Adapter->HalData->IntrMask[1] = imr_ex;




 usb_opt = usb_read8(Adapter, REG_USB_SPECIAL_OPTION);

 if (!adapter_to_dvobj(Adapter)->ishighspeed)
  usb_opt = usb_opt & (~INT_BULK_SEL);
 else
  usb_opt = usb_opt | (INT_BULK_SEL);

 usb_write8(Adapter, REG_USB_SPECIAL_OPTION, usb_opt);
}
