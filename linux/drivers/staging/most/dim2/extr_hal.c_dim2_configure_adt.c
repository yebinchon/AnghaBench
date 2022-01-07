
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;


 scalar_t__ ADT ;
 int ADT0_CE_BIT ;
 int ADT0_LE_BIT ;
 int ADT0_PG_BIT ;
 int dim2_write_ctr (scalar_t__,int*) ;

__attribute__((used)) static void dim2_configure_adt(u8 ch_addr)
{
 u32 adt[4] = { 0, 0, 0, 0 };

 adt[0] =
  (1 << ADT0_CE_BIT) |
  (1 << ADT0_LE_BIT) |
  (0 << ADT0_PG_BIT);

 dim2_write_ctr(ADT + ch_addr, adt);
}
