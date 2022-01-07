
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_video_timings {int dummy; } ;
struct panel_drv_data {struct omap_video_timings videomode; } ;
struct omap_dss_device {int dummy; } ;


 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static void acx565akm_get_timings(struct omap_dss_device *dssdev,
  struct omap_video_timings *timings)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);

 *timings = ddata->videomode;
}
