
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int IQK_MAC_REG_NUM ;
 int usb_read32 (struct adapter*,int) ;
 int usb_read8 (struct adapter*,int) ;

__attribute__((used)) static void save_mac_registers(struct adapter *adapt, u32 *mac_reg,
          u32 *backup)
{
 u32 i;

 for (i = 0; i < (IQK_MAC_REG_NUM - 1); i++)
  backup[i] = usb_read8(adapt, mac_reg[i]);

 backup[i] = usb_read32(adapt, mac_reg[i]);
}
