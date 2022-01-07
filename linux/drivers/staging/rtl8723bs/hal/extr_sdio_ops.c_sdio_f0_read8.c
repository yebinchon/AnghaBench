
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct intf_hdl {int dummy; } ;


 int sd_f0_read8 (struct intf_hdl*,int ,int *) ;

__attribute__((used)) static u8 sdio_f0_read8(struct intf_hdl *intfhdl, u32 addr)
{
 return sd_f0_read8(intfhdl, addr, ((void*)0));
}
