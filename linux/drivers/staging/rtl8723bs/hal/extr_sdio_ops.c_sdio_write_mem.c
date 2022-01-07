
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct intf_hdl {int dummy; } ;


 int sdio_writeN (struct intf_hdl*,int ,int ,int *) ;

__attribute__((used)) static void sdio_write_mem(
 struct intf_hdl *intfhdl,
 u32 addr,
 u32 cnt,
 u8 *wmem
)
{
 sdio_writeN(intfhdl, addr, cnt, wmem);
}
