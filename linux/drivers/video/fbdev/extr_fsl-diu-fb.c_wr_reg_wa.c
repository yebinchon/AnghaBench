
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ in_be32 (scalar_t__*) ;
 int out_be32 (scalar_t__*,scalar_t__) ;

void wr_reg_wa(u32 *reg, u32 val)
{
 do {
  out_be32(reg, val);
 } while (in_be32(reg) != val);
}
