
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmpfb_info {int overlay; scalar_t__ fb_start_dma; TYPE_1__* fb_info; } ;
struct mmp_addr {scalar_t__* phys; } ;
struct fb_var_screeninfo {int yoffset; int xres_virtual; int xoffset; int bits_per_pixel; } ;
typedef int addr ;
struct TYPE_2__ {struct fb_var_screeninfo var; } ;


 int memset (struct mmp_addr*,int ,int) ;
 int mmp_overlay_set_addr (int ,struct mmp_addr*) ;
 int mmp_overlay_set_onoff (int ,int) ;
 int mmpfb_set_win (TYPE_1__*) ;

__attribute__((used)) static void mmpfb_power(struct mmpfb_info *fbi, int power)
{
 struct mmp_addr addr;
 struct fb_var_screeninfo *var = &fbi->fb_info->var;


 if (power) {

  mmpfb_set_win(fbi->fb_info);


  memset(&addr, 0, sizeof(addr));
  addr.phys[0] = fbi->fb_start_dma +
   (var->yoffset * var->xres_virtual + var->xoffset)
   * var->bits_per_pixel / 8;
  mmp_overlay_set_addr(fbi->overlay, &addr);
 }
 mmp_overlay_set_onoff(fbi->overlay, power);
}
