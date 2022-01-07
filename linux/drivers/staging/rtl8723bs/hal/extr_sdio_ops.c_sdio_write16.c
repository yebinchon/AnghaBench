
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct intf_hdl {int dummy; } ;
typedef int s32 ;
typedef int __le16 ;


 int _cvrt2ftaddr (int ,int *,int *) ;
 int cpu_to_le16 (int ) ;
 int sd_cmd52_write (struct intf_hdl*,int ,int,int *) ;

__attribute__((used)) static s32 sdio_write16(struct intf_hdl *intfhdl, u32 addr, u16 val)
{
 u32 ftaddr;
 __le16 le_tmp;

 ftaddr = _cvrt2ftaddr(addr, ((void*)0), ((void*)0));
 le_tmp = cpu_to_le16(val);
 return sd_cmd52_write(intfhdl, ftaddr, 2, (u8 *)&le_tmp);
}
