
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panel_drv_data {struct omap_dss_device* in; } ;
struct omap_video_timings {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sdi; } ;
struct omap_dss_device {TYPE_2__ ops; } ;
struct TYPE_3__ {int (* check_timings ) (struct omap_dss_device*,struct omap_video_timings*) ;} ;


 int stub1 (struct omap_dss_device*,struct omap_video_timings*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static int acx565akm_check_timings(struct omap_dss_device *dssdev,
  struct omap_video_timings *timings)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;

 return in->ops.sdi->check_timings(in, timings);
}
