
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct intf_hdl {int dummy; } ;
typedef int s32 ;


 int _cvrt2ftaddr (int ,int *,int *) ;
 int sd_write8 (struct intf_hdl*,int ,int ,int *) ;

__attribute__((used)) static s32 sdio_write8(struct intf_hdl *intfhdl, u32 addr, u8 val)
{
 u32 ftaddr;
 s32 err;

 ftaddr = _cvrt2ftaddr(addr, ((void*)0), ((void*)0));
 sd_write8(intfhdl, ftaddr, val, &err);

 return err;
}
