
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int* baudrate_table ;

__attribute__((used)) static int f81534_find_clk(u32 baudrate)
{
 int idx;

 for (idx = 0; idx < ARRAY_SIZE(baudrate_table); ++idx) {
  if (baudrate <= baudrate_table[idx] &&
    baudrate_table[idx] % baudrate == 0)
   return idx;
 }

 return -EINVAL;
}
