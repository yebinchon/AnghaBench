
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmpfb_info {int overlay; scalar_t__ fb_start_dma; int path; int output_fmt; int mode; } ;
struct mmp_mode {int dummy; } ;
struct mmp_addr {scalar_t__* phys; } ;
struct fb_var_screeninfo {int yoffset; int xres_virtual; int xoffset; int bits_per_pixel; } ;
struct fb_info {struct fb_var_screeninfo var; struct mmpfb_info* par; } ;
typedef int addr ;


 int fbmode_to_mmpmode (struct mmp_mode*,int *,int ) ;
 int memset (struct mmp_addr*,int ,int) ;
 int mmp_overlay_set_addr (int ,struct mmp_addr*) ;
 int mmp_path_set_mode (int ,struct mmp_mode*) ;
 int mmpfb_set_win (struct fb_info*) ;
 int var_update (struct fb_info*) ;

__attribute__((used)) static int mmpfb_set_par(struct fb_info *info)
{
 struct mmpfb_info *fbi = info->par;
 struct fb_var_screeninfo *var = &info->var;
 struct mmp_addr addr;
 struct mmp_mode mode;
 int ret;

 ret = var_update(info);
 if (ret != 0)
  return ret;


 fbmode_to_mmpmode(&mode, &fbi->mode, fbi->output_fmt);
 mmp_path_set_mode(fbi->path, &mode);


 mmpfb_set_win(info);


 memset(&addr, 0, sizeof(addr));
 addr.phys[0] = (var->yoffset * var->xres_virtual + var->xoffset)
  * var->bits_per_pixel / 8 + fbi->fb_start_dma;
 mmp_overlay_set_addr(fbi->overlay, &addr);

 return 0;
}
