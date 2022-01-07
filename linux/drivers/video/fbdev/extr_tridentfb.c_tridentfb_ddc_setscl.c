
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int io_virt; } ;


 unsigned char DDC_MASK ;
 unsigned char DDC_SCL_OUT ;
 int I2C ;
 unsigned char vga_mm_rcrt (int ,int ) ;
 int vga_mm_wcrt (int ,int ,unsigned char) ;

__attribute__((used)) static void tridentfb_ddc_setscl(void *data, int val)
{
 struct tridentfb_par *par = data;
 unsigned char reg;

 reg = vga_mm_rcrt(par->io_virt, I2C) & DDC_MASK;
 if (val)
  reg |= DDC_SCL_OUT;
 else
  reg &= ~DDC_SCL_OUT;
 vga_mm_wcrt(par->io_virt, I2C, reg);
}
