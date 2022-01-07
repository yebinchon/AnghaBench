
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int sossi_read_reg (int) ;
 int sossi_write_reg (int,int) ;

__attribute__((used)) static void sossi_clear_bits(int reg, u32 bits)
{
 sossi_write_reg(reg, sossi_read_reg(reg) & ~bits);
}
