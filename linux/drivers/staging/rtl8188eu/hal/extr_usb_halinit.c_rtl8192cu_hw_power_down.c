
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int REG_APS_FSMCO ;
 int REG_RSV_CTRL ;
 int usb_write16 (struct adapter*,int ,int) ;
 int usb_write8 (struct adapter*,int ,int) ;

__attribute__((used)) static void rtl8192cu_hw_power_down(struct adapter *adapt)
{




 usb_write8(adapt, REG_RSV_CTRL, 0x0);
 usb_write16(adapt, REG_APS_FSMCO, 0x8812);
}
