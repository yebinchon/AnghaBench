
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct intf_hdl {int dummy; } ;


 int _cvrt2ftaddr (int ,int *,int *) ;
 int sd_read8 (struct intf_hdl*,int ,int *) ;

__attribute__((used)) static u8 sdio_read8(struct intf_hdl *intfhdl, u32 addr)
{
 u32 ftaddr;
 ftaddr = _cvrt2ftaddr(addr, ((void*)0), ((void*)0));

 return sd_read8(intfhdl, ftaddr, ((void*)0));
}
