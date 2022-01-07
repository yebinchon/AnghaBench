
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeonfb_info {int mon1_dbsize; scalar_t__ mon1_type; int info; struct fb_videomode* mon1_modedb; } ;
struct fb_videomode {scalar_t__ yres; scalar_t__ xres; } ;
struct fb_var_screeninfo {int activate; scalar_t__ yres; scalar_t__ xres; } ;


 int EINVAL ;
 int FB_ACTIVATE_MASK ;
 int FB_ACTIVATE_NOW ;
 int FB_ACTIVATE_TEST ;
 int INT_MAX ;
 scalar_t__ MT_DFP ;
 scalar_t__ MT_LCD ;
 scalar_t__ fb_validate_mode (struct fb_var_screeninfo*,int ) ;
 int memcpy (struct fb_var_screeninfo*,struct fb_var_screeninfo const*,int) ;
 int radeon_compare_modes (struct fb_var_screeninfo const*,struct fb_videomode const*) ;
 int radeon_videomode_to_var (struct fb_var_screeninfo*,struct fb_videomode const*) ;
 struct fb_videomode* vesa_modes ;

int radeon_match_mode(struct radeonfb_info *rinfo,
         struct fb_var_screeninfo *dest,
         const struct fb_var_screeninfo *src)
{
 const struct fb_videomode *db = vesa_modes;
 int i, dbsize = 34;
 int has_rmx, native_db = 0;
 int distance = INT_MAX;
 const struct fb_videomode *candidate = ((void*)0);


 memcpy(dest, src, sizeof(struct fb_var_screeninfo));


 if (rinfo->mon1_modedb) {
  db = rinfo->mon1_modedb;
  dbsize = rinfo->mon1_dbsize;
  native_db = 1;
 }


 has_rmx = rinfo->mon1_type == MT_LCD || rinfo->mon1_type == MT_DFP;





 if ((src->activate & FB_ACTIVATE_MASK) == FB_ACTIVATE_TEST ||
     (src->activate & FB_ACTIVATE_MASK) == FB_ACTIVATE_NOW) {





  if (has_rmx == 0 && rinfo->mon1_modedb)
   if (fb_validate_mode((struct fb_var_screeninfo *)src, rinfo->info))
    return -EINVAL;
  return 0;
 }


 while (db) {
  for (i = 0; i < dbsize; i++) {
   int d;

   if (db[i].yres < src->yres)
    continue;
   if (db[i].xres < src->xres)
    continue;
   d = radeon_compare_modes(src, &db[i]);



   if (d < distance) {
    candidate = &db[i];
    distance = d;
   }
  }
  db = ((void*)0);

  if (native_db && has_rmx) {
   db = vesa_modes;
   dbsize = 34;
   native_db = 0;
  }
 }


 if (candidate != ((void*)0)) {
  radeon_videomode_to_var(dest, candidate);
  return 0;
 }


 if (!has_rmx)
  return -EINVAL;

 return 0;
}
