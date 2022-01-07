
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct platform_device {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int x_res; int y_res; } ;
struct dsi_data {int update_channel; void (* framedone_callback ) (int,void*) ;int update_bytes; int pix_fmt; TYPE_1__ timings; void* framedone_data; } ;


 struct platform_device* dsi_get_dsidev_from_dssdev (struct omap_dss_device*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_get_pixel_size (int ) ;
 int dsi_perf_mark_setup (struct platform_device*) ;
 int dsi_update_screen_dispc (struct platform_device*) ;

__attribute__((used)) static int dsi_update(struct omap_dss_device *dssdev, int channel,
  void (*callback)(int, void *), void *data)
{
 struct platform_device *dsidev = dsi_get_dsidev_from_dssdev(dssdev);
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 u16 dw, dh;

 dsi_perf_mark_setup(dsidev);

 dsi->update_channel = channel;

 dsi->framedone_callback = callback;
 dsi->framedone_data = data;

 dw = dsi->timings.x_res;
 dh = dsi->timings.y_res;





 dsi_update_screen_dispc(dsidev);

 return 0;
}
