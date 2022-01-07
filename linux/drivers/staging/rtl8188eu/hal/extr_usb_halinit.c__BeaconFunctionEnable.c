
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int BIT (int) ;
 scalar_t__ REG_BCN_CTRL ;
 scalar_t__ REG_RD_CTRL ;
 int usb_write8 (struct adapter*,scalar_t__,int) ;

__attribute__((used)) static void _BeaconFunctionEnable(struct adapter *Adapter,
      bool Enable, bool Linked)
{
 usb_write8(Adapter, REG_BCN_CTRL, (BIT(4) | BIT(3) | BIT(1)));

 usb_write8(Adapter, REG_RD_CTRL + 1, 0x6F);
}
