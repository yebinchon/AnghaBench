
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int ffs (int) ;
 int read_nic_dword (struct net_device*,int,int*) ;

u32 rtl8192_QueryBBReg(struct net_device *dev, u32 reg_addr, u32 bitmask)
{
 u32 reg, bitshift;

 read_nic_dword(dev, reg_addr, &reg);
 bitshift = ffs(bitmask) - 1;

 return (reg & bitmask) >> bitshift;
}
