
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int UWIRE_SR3 ;
 int uwire_read_reg (int ) ;
 int uwire_write_reg (int ,int) ;

__attribute__((used)) static void uwire_set_clk1_div(int div1_idx)
{
 u16 w;

 w = uwire_read_reg(UWIRE_SR3);
 w &= ~(0x03 << 1);
 w |= div1_idx << 1;
 uwire_write_reg(UWIRE_SR3, w);
}
