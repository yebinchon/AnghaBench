
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {int flags; int vsync_len; int vfront_porch; int vback_porch; int vactive; int hsync_len; int hfront_porch; int hback_porch; int hactive; int pixelclock; } ;
struct omap_video_timings {scalar_t__ hsync_level; scalar_t__ vsync_level; scalar_t__ de_level; scalar_t__ data_pclk_edge; int vsw; int vfp; int vbp; int y_res; int hsw; int hfp; int hbp; int x_res; int pixelclock; } ;


 int DISPLAY_FLAGS_DE_HIGH ;
 int DISPLAY_FLAGS_DE_LOW ;
 int DISPLAY_FLAGS_HSYNC_HIGH ;
 int DISPLAY_FLAGS_HSYNC_LOW ;
 int DISPLAY_FLAGS_PIXDATA_NEGEDGE ;
 int DISPLAY_FLAGS_PIXDATA_POSEDGE ;
 int DISPLAY_FLAGS_VSYNC_HIGH ;
 int DISPLAY_FLAGS_VSYNC_LOW ;
 scalar_t__ OMAPDSS_DRIVE_SIG_RISING_EDGE ;
 scalar_t__ OMAPDSS_SIG_ACTIVE_HIGH ;
 int memset (struct videomode*,int ,int) ;

void omap_video_timings_to_videomode(const struct omap_video_timings *ovt,
  struct videomode *vm)
{
 memset(vm, 0, sizeof(*vm));

 vm->pixelclock = ovt->pixelclock;

 vm->hactive = ovt->x_res;
 vm->hback_porch = ovt->hbp;
 vm->hfront_porch = ovt->hfp;
 vm->hsync_len = ovt->hsw;
 vm->vactive = ovt->y_res;
 vm->vback_porch = ovt->vbp;
 vm->vfront_porch = ovt->vfp;
 vm->vsync_len = ovt->vsw;

 if (ovt->hsync_level == OMAPDSS_SIG_ACTIVE_HIGH)
  vm->flags |= DISPLAY_FLAGS_HSYNC_HIGH;
 else
  vm->flags |= DISPLAY_FLAGS_HSYNC_LOW;

 if (ovt->vsync_level == OMAPDSS_SIG_ACTIVE_HIGH)
  vm->flags |= DISPLAY_FLAGS_VSYNC_HIGH;
 else
  vm->flags |= DISPLAY_FLAGS_VSYNC_LOW;

 if (ovt->de_level == OMAPDSS_SIG_ACTIVE_HIGH)
  vm->flags |= DISPLAY_FLAGS_DE_HIGH;
 else
  vm->flags |= DISPLAY_FLAGS_DE_LOW;

 if (ovt->data_pclk_edge == OMAPDSS_DRIVE_SIG_RISING_EDGE)
  vm->flags |= DISPLAY_FLAGS_PIXDATA_POSEDGE;
 else
  vm->flags |= DISPLAY_FLAGS_PIXDATA_NEGEDGE;
}
