
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int io_virt; } ;


 int DDC_SDA_TGUI ;
 int I2C ;
 int vga_mm_rcrt (int ,int ) ;

__attribute__((used)) static int tridentfb_ddc_getsda_tgui(void *data)
{
 struct tridentfb_par *par = data;

 return !!(vga_mm_rcrt(par->io_virt, I2C) & DDC_SDA_TGUI);
}
