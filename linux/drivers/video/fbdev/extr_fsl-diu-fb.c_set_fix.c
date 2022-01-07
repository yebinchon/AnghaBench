
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfb_info {int id; } ;
struct fb_var_screeninfo {int xres_virtual; int bits_per_pixel; } ;
struct fb_fix_screeninfo {int line_length; int xpanstep; int ypanstep; int visual; int accel; int type; int id; } ;
struct fb_info {struct mfb_info* par; struct fb_var_screeninfo var; struct fb_fix_screeninfo fix; } ;


 int FB_ACCEL_NONE ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_TRUECOLOR ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static void set_fix(struct fb_info *info)
{
 struct fb_fix_screeninfo *fix = &info->fix;
 struct fb_var_screeninfo *var = &info->var;
 struct mfb_info *mfbi = info->par;

 strncpy(fix->id, mfbi->id, sizeof(fix->id));
 fix->line_length = var->xres_virtual * var->bits_per_pixel / 8;
 fix->type = FB_TYPE_PACKED_PIXELS;
 fix->accel = FB_ACCEL_NONE;
 fix->visual = FB_VISUAL_TRUECOLOR;
 fix->xpanstep = 1;
 fix->ypanstep = 1;
}
