
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vbe_version; } ;
struct uvesafb_par {TYPE_1__ vbe_ib; } ;
struct fb_videomode {scalar_t__ xres; scalar_t__ yres; int vmode; } ;
struct fb_var_screeninfo {scalar_t__ xres; scalar_t__ yres; scalar_t__ pixclock; } ;
struct TYPE_4__ {scalar_t__ gtf; } ;
struct fb_info {TYPE_2__ monspecs; int modelist; struct uvesafb_par* par; } ;


 int FB_IGNOREMON ;
 int FB_MAXTIMINGS ;
 int FB_VMODE_DOUBLE ;
 int FB_VMODE_INTERLACED ;
 int FB_VSYNCTIMINGS ;
 struct fb_videomode* fb_find_best_mode (struct fb_var_screeninfo*,int *) ;
 int fb_get_mode (int,int,struct fb_var_screeninfo*,struct fb_info*) ;
 int fb_validate_mode (struct fb_var_screeninfo*,struct fb_info*) ;
 int fb_videomode_to_var (struct fb_var_screeninfo*,struct fb_videomode const*) ;

__attribute__((used)) static void uvesafb_check_limits(struct fb_var_screeninfo *var,
  struct fb_info *info)
{
 const struct fb_videomode *mode;
 struct uvesafb_par *par = info->par;





 if (!var->pixclock)
  return;

 if (par->vbe_ib.vbe_version < 0x0300) {
  fb_get_mode(FB_VSYNCTIMINGS | FB_IGNOREMON, 60, var, info);
  return;
 }

 if (!fb_validate_mode(var, info))
  return;

 mode = fb_find_best_mode(var, &info->modelist);
 if (mode) {
  if (mode->xres == var->xres && mode->yres == var->yres &&
      !(mode->vmode & (FB_VMODE_INTERLACED | FB_VMODE_DOUBLE))) {
   fb_videomode_to_var(var, mode);
   return;
  }
 }

 if (info->monspecs.gtf && !fb_get_mode(FB_MAXTIMINGS, 0, var, info))
  return;

 var->pixclock = 0;
}
