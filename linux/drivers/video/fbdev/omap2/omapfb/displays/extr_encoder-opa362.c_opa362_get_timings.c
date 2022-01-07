
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_video_timings {int dummy; } ;
struct panel_drv_data {struct omap_video_timings timings; } ;
struct omap_dss_device {int dev; } ;


 int dev_dbg (int ,char*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static void opa362_get_timings(struct omap_dss_device *dssdev,
  struct omap_video_timings *timings)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);

 dev_dbg(dssdev->dev, "get_timings\n");

 *timings = ddata->timings;
}
