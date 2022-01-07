
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;


 scalar_t__ ADT ;
 int dim2_write_ctr (scalar_t__,int *) ;

__attribute__((used)) static void dim2_clear_adt(u8 ch_addr)
{
 u32 adt[4] = { 0, 0, 0, 0 };

 dim2_write_ctr(ADT + ch_addr, adt);
}
