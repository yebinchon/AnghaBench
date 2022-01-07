
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;


 scalar_t__ CDT ;
 int CDT0_RPC_MASK ;
 int CDT0_RPC_SHIFT ;
 int dim2_read_ctr (scalar_t__,int ) ;

__attribute__((used)) static u16 dim2_rpc(u8 ch_addr)
{
 u32 cdt0 = dim2_read_ctr(CDT + ch_addr, 0);

 return (cdt0 >> CDT0_RPC_SHIFT) & CDT0_RPC_MASK;
}
