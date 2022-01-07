
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int bMaskDWord ;
 int ffs (int) ;
 int read_nic_dword (struct net_device*,int,int*) ;
 int write_nic_dword (struct net_device*,int,int) ;

void rtl8192_setBBreg(struct net_device *dev, u32 reg_addr, u32 bitmask,
        u32 data)
{

 u32 reg, bitshift;

 if (bitmask != bMaskDWord) {
  read_nic_dword(dev, reg_addr, &reg);
  bitshift = ffs(bitmask) - 1;
  reg &= ~bitmask;
  reg |= data << bitshift;
  write_nic_dword(dev, reg_addr, reg);
 } else {
  write_nic_dword(dev, reg_addr, data);
 }
}
