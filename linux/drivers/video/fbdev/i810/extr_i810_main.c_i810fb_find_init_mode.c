
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i810fb_par {int ddc_num; int edid; } ;
struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int bits_per_pixel; } ;
struct fb_monspecs {int * modedb; int modedb_len; } ;
struct fb_info {struct fb_var_screeninfo var; int modelist; struct fb_monspecs monspecs; struct i810fb_par* par; } ;


 int INIT_LIST_HEAD (int *) ;
 int fb_destroy_modedb (int *) ;
 int fb_edid_to_monspecs (int ,struct fb_monspecs*) ;
 struct fb_videomode* fb_find_best_display (struct fb_monspecs*,int *) ;
 struct fb_videomode* fb_find_best_mode (struct fb_var_screeninfo*,int *) ;
 int fb_find_mode (struct fb_var_screeninfo*,struct fb_info*,scalar_t__,int *,int ,struct fb_videomode*,int ) ;
 int fb_videomode_to_modelist (int *,int ,int *) ;
 int fb_videomode_to_var (struct fb_var_screeninfo*,struct fb_videomode*) ;
 int i810_create_i2c_busses (struct i810fb_par*) ;
 int i810_probe_i2c_connector (struct fb_info*,int *,int) ;
 int memset (struct fb_videomode*,int ,int) ;
 scalar_t__ mode_option ;
 int printk (char*) ;
 scalar_t__ xres ;
 scalar_t__ yres ;

__attribute__((used)) static void i810fb_find_init_mode(struct fb_info *info)
{
 struct fb_videomode mode;
 struct fb_var_screeninfo var;
 struct fb_monspecs *specs = &info->monspecs;
 int found = 0;






 INIT_LIST_HEAD(&info->modelist);
 memset(&mode, 0, sizeof(struct fb_videomode));
 var = info->var;
 if (mode_option)
  fb_find_mode(&var, info, mode_option, specs->modedb,
        specs->modedb_len, (found) ? &mode : ((void*)0),
        info->var.bits_per_pixel);

 info->var = var;
 fb_destroy_modedb(specs->modedb);
 specs->modedb = ((void*)0);
}
