
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmpfb_info {int overlay; scalar_t__ fb_start_dma; } ;
struct mmp_addr {scalar_t__* phys; } ;
struct fb_var_screeninfo {int yoffset; int xres_virtual; int xoffset; int bits_per_pixel; } ;
struct fb_info {struct mmpfb_info* par; } ;
typedef int addr ;


 int memset (struct mmp_addr*,int ,int) ;
 int mmp_overlay_set_addr (int ,struct mmp_addr*) ;

__attribute__((used)) static int mmpfb_pan_display(struct fb_var_screeninfo *var,
  struct fb_info *info)
{
 struct mmpfb_info *fbi = info->par;
 struct mmp_addr addr;

 memset(&addr, 0, sizeof(addr));
 addr.phys[0] = (var->yoffset * var->xres_virtual + var->xoffset)
  * var->bits_per_pixel / 8 + fbi->fb_start_dma;
 mmp_overlay_set_addr(fbi->overlay, &addr);

 return 0;
}
