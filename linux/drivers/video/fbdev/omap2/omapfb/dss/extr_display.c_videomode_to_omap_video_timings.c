
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {int flags; int vsync_len; int vfront_porch; int vback_porch; int vactive; int hsync_len; int hfront_porch; int hback_porch; int hactive; int pixelclock; } ;
struct omap_video_timings {int data_pclk_edge; int sync_pclk_edge; void* de_level; void* hsync_level; void* vsync_level; int vsw; int vfp; int vbp; int y_res; int hsw; int hfp; int hbp; int x_res; int pixelclock; } ;


 int DISPLAY_FLAGS_DE_HIGH ;
 int DISPLAY_FLAGS_HSYNC_HIGH ;
 int DISPLAY_FLAGS_PIXDATA_POSEDGE ;
 int DISPLAY_FLAGS_VSYNC_HIGH ;
 int OMAPDSS_DRIVE_SIG_FALLING_EDGE ;
 int OMAPDSS_DRIVE_SIG_RISING_EDGE ;
 void* OMAPDSS_SIG_ACTIVE_HIGH ;
 void* OMAPDSS_SIG_ACTIVE_LOW ;
 int memset (struct omap_video_timings*,int ,int) ;

void videomode_to_omap_video_timings(const struct videomode *vm,
  struct omap_video_timings *ovt)
{
 memset(ovt, 0, sizeof(*ovt));

 ovt->pixelclock = vm->pixelclock;
 ovt->x_res = vm->hactive;
 ovt->hbp = vm->hback_porch;
 ovt->hfp = vm->hfront_porch;
 ovt->hsw = vm->hsync_len;
 ovt->y_res = vm->vactive;
 ovt->vbp = vm->vback_porch;
 ovt->vfp = vm->vfront_porch;
 ovt->vsw = vm->vsync_len;

 ovt->vsync_level = vm->flags & DISPLAY_FLAGS_VSYNC_HIGH ?
  OMAPDSS_SIG_ACTIVE_HIGH :
  OMAPDSS_SIG_ACTIVE_LOW;
 ovt->hsync_level = vm->flags & DISPLAY_FLAGS_HSYNC_HIGH ?
  OMAPDSS_SIG_ACTIVE_HIGH :
  OMAPDSS_SIG_ACTIVE_LOW;
 ovt->de_level = vm->flags & DISPLAY_FLAGS_DE_HIGH ?
  OMAPDSS_SIG_ACTIVE_HIGH :
  OMAPDSS_SIG_ACTIVE_LOW;
 ovt->data_pclk_edge = vm->flags & DISPLAY_FLAGS_PIXDATA_POSEDGE ?
  OMAPDSS_DRIVE_SIG_RISING_EDGE :
  OMAPDSS_DRIVE_SIG_FALLING_EDGE;

 ovt->sync_pclk_edge = ovt->data_pclk_edge;
}
