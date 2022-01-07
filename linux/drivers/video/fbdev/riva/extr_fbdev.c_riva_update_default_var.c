
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_videomode {int flag; } ;
struct fb_var_screeninfo {int bits_per_pixel; } ;
struct fb_monspecs {int modedb_len; int misc; struct fb_videomode* modedb; } ;
struct fb_info {struct fb_monspecs monspecs; } ;


 int FB_MISC_1ST_DETAIL ;
 int FB_MODE_IS_FIRST ;
 int NVTRACE_ENTER () ;
 int NVTRACE_LEAVE () ;
 int fb_find_mode (struct fb_var_screeninfo*,struct fb_info*,scalar_t__,struct fb_videomode*,int,int *,int) ;
 scalar_t__ mode_option ;
 int riva_update_var (struct fb_var_screeninfo*,struct fb_videomode*) ;

__attribute__((used)) static void riva_update_default_var(struct fb_var_screeninfo *var,
        struct fb_info *info)
{
 struct fb_monspecs *specs = &info->monspecs;
 struct fb_videomode modedb;

 NVTRACE_ENTER();

 if (mode_option) {
  fb_find_mode(var, info, mode_option,
        specs->modedb, specs->modedb_len,
        ((void*)0), 8);
 } else if (specs->modedb != ((void*)0)) {

  modedb = specs->modedb[0];

  if (info->monspecs.misc & FB_MISC_1ST_DETAIL) {
   int i;

   for (i = 0; i < specs->modedb_len; i++) {
    if (specs->modedb[i].flag & FB_MODE_IS_FIRST) {
     modedb = specs->modedb[i];
     break;
    }
   }
  }
  var->bits_per_pixel = 8;
  riva_update_var(var, &modedb);
 }
 NVTRACE_LEAVE();
}
