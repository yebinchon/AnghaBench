
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i740fb_par {int dummy; } ;


 int VGA_ATT_W ;
 int VGA_SEQ_CLOCK_MODE ;
 int VGA_SEQ_I ;
 int i740inb (struct i740fb_par*,int) ;
 int i740outb (struct i740fb_par*,int ,int) ;
 int i740outreg_mask (struct i740fb_par*,int ,int ,int,int) ;

__attribute__((used)) static void vga_protect(struct i740fb_par *par)
{

 i740outreg_mask(par, VGA_SEQ_I, VGA_SEQ_CLOCK_MODE, 0x20, 0x20);

 i740inb(par, 0x3DA);
 i740outb(par, VGA_ATT_W, 0x00);
}
