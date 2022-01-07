
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tridentfb_par {int io_virt; } ;


 int DDC_MASK_TGUI ;
 int DDC_SDA_DRIVE_TGUI ;
 int I2C ;
 int vga_mm_rcrt (int ,int ) ;
 int vga_mm_wcrt (int ,int ,int) ;

__attribute__((used)) static void tridentfb_ddc_setsda_tgui(void *data, int val)
{
 struct tridentfb_par *par = data;
 u8 reg = vga_mm_rcrt(par->io_virt, I2C) & DDC_MASK_TGUI;

 if (val)
  reg &= ~DDC_SDA_DRIVE_TGUI;
 else
  reg |= DDC_SDA_DRIVE_TGUI;

 vga_mm_wcrt(par->io_virt, I2C, reg);
}
