
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct intf_hdl {int dummy; } ;
typedef int __le16 ;


 int _cvrt2ftaddr (int ,int *,int *) ;
 int le16_to_cpu (int ) ;
 int sd_cmd52_read (struct intf_hdl*,int ,int,int *) ;

__attribute__((used)) static u16 sdio_read16(struct intf_hdl *intfhdl, u32 addr)
{
 u32 ftaddr;
 __le16 le_tmp;

 ftaddr = _cvrt2ftaddr(addr, ((void*)0), ((void*)0));
 sd_cmd52_read(intfhdl, ftaddr, 2, (u8 *)&le_tmp);

 return le16_to_cpu(le_tmp);
}
