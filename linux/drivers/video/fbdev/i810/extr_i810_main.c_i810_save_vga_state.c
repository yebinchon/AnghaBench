
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i810fb_par {int dummy; } ;


 int i810_save_2d (struct i810fb_par*) ;
 int i810_save_vga (struct i810fb_par*) ;
 int i810_save_vgax (struct i810fb_par*) ;

__attribute__((used)) static void i810_save_vga_state(struct i810fb_par *par)
{
 i810_save_vga(par);
 i810_save_vgax(par);
 i810_save_2d(par);
}
