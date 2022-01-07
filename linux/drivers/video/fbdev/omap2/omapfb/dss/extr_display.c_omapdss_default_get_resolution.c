
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int y_res; int x_res; } ;
struct TYPE_4__ {TYPE_1__ timings; } ;
struct omap_dss_device {TYPE_2__ panel; } ;



void omapdss_default_get_resolution(struct omap_dss_device *dssdev,
   u16 *xres, u16 *yres)
{
 *xres = dssdev->panel.timings.x_res;
 *yres = dssdev->panel.timings.y_res;
}
