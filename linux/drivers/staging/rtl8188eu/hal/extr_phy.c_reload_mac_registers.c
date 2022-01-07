
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 int IQK_MAC_REG_NUM ;
 int usb_write32 (struct adapter*,int,int) ;
 int usb_write8 (struct adapter*,int,int ) ;

__attribute__((used)) static void reload_mac_registers(struct adapter *adapt,
     u32 *mac_reg, u32 *backup)
{
 u32 i;

 for (i = 0; i < (IQK_MAC_REG_NUM - 1); i++)
  usb_write8(adapt, mac_reg[i], (u8)backup[i]);

 usb_write32(adapt, mac_reg[i], backup[i]);
}
