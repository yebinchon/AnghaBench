
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct intf_hdl {int dummy; } ;
typedef int s32 ;


 int sdio_readN (struct intf_hdl*,int ,int ,int *) ;

__attribute__((used)) static void sdio_read_mem(
 struct intf_hdl *intfhdl,
 u32 addr,
 u32 cnt,
 u8 *rmem
)
{
 s32 err;

 err = sdio_readN(intfhdl, addr, cnt, rmem);

}
