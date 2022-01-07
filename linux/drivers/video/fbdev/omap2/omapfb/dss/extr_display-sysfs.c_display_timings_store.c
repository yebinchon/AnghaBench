
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_video_timings {int vsw; int vbp; int vfp; int y_res; int hsw; int hbp; int hfp; int x_res; int pixelclock; } ;
struct TYPE_3__ {struct omap_video_timings timings; } ;
struct omap_dss_device {TYPE_2__* driver; TYPE_1__ panel; } ;
typedef int ssize_t ;
struct TYPE_4__ {int (* check_timings ) (struct omap_dss_device*,struct omap_video_timings*) ;int (* enable ) (struct omap_dss_device*) ;int (* set_timings ) (struct omap_dss_device*,struct omap_video_timings*) ;int (* disable ) (struct omap_dss_device*) ;} ;


 int EINVAL ;
 int ENOENT ;
 struct omap_video_timings omap_dss_ntsc_timings ;
 struct omap_video_timings omap_dss_pal_timings ;
 int sscanf (char const*,char*,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 scalar_t__ strncmp (char*,char const*,int) ;
 int stub1 (struct omap_dss_device*,struct omap_video_timings*) ;
 int stub2 (struct omap_dss_device*) ;
 int stub3 (struct omap_dss_device*,struct omap_video_timings*) ;
 int stub4 (struct omap_dss_device*) ;

__attribute__((used)) static ssize_t display_timings_store(struct omap_dss_device *dssdev,
 const char *buf, size_t size)
{
 struct omap_video_timings t = dssdev->panel.timings;
 int r, found;

 if (!dssdev->driver->set_timings || !dssdev->driver->check_timings)
  return -ENOENT;

 found = 0;
 if (!found && sscanf(buf, "%u,%hu/%hu/%hu/%hu,%hu/%hu/%hu/%hu",
    &t.pixelclock,
    &t.x_res, &t.hfp, &t.hbp, &t.hsw,
    &t.y_res, &t.vfp, &t.vbp, &t.vsw) != 9)
  return -EINVAL;

 r = dssdev->driver->check_timings(dssdev, &t);
 if (r)
  return r;

 dssdev->driver->disable(dssdev);
 dssdev->driver->set_timings(dssdev, &t);
 r = dssdev->driver->enable(dssdev);
 if (r)
  return r;

 return size;
}
