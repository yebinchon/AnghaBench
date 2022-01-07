
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;


 scalar_t__ CDT ;
 int dim2_write_ctr (scalar_t__,int *) ;

__attribute__((used)) static void dim2_clear_cdt(u8 ch_addr)
{
 u32 cdt[4] = { 0, 0, 0, 0 };

 dim2_write_ctr(CDT + ch_addr, cdt);
}
