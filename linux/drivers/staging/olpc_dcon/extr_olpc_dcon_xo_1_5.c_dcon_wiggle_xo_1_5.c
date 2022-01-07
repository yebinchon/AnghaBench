
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT_GPIO12 ;
 int VX855_GPI_SCI_SMI ;
 int inb (int ) ;
 int outb (int,int ) ;
 int set_i2c_line (int,int) ;
 int udelay (int) ;

__attribute__((used)) static void dcon_wiggle_xo_1_5(void)
{
 int x;
 set_i2c_line(1, 1);

 for (x = 0; x < 16; x++) {
  udelay(5);
  set_i2c_line(1, 0);
  udelay(5);
  set_i2c_line(1, 1);
 }
 udelay(5);


 outb(inb(VX855_GPI_SCI_SMI) | BIT_GPIO12, VX855_GPI_SCI_SMI);
}
