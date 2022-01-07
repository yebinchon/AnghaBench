
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct panel_drv_data {scalar_t__ enabled; TYPE_1__* pdev; int channel; struct omap_dss_device* in; } ;
struct TYPE_6__ {TYPE_2__* dsi; } ;
struct omap_dss_device {TYPE_3__ ops; } ;
struct TYPE_5__ {int (* disable ) (struct omap_dss_device*,int,int) ;int (* disable_video_output ) (struct omap_dss_device*,int ) ;} ;
struct TYPE_4__ {int dev; } ;


 int MIPI_DCS_SET_DISPLAY_OFF ;
 int dev_err (int *,char*) ;
 int dsicm_dcs_write_0 (struct panel_drv_data*,int ) ;
 int dsicm_hw_reset (struct panel_drv_data*) ;
 int dsicm_sleep_in (struct panel_drv_data*) ;
 int stub1 (struct omap_dss_device*,int ) ;
 int stub2 (struct omap_dss_device*,int,int) ;

__attribute__((used)) static void dsicm_power_off(struct panel_drv_data *ddata)
{
 struct omap_dss_device *in = ddata->in;
 int r;

 in->ops.dsi->disable_video_output(in, ddata->channel);

 r = dsicm_dcs_write_0(ddata, MIPI_DCS_SET_DISPLAY_OFF);
 if (!r)
  r = dsicm_sleep_in(ddata);

 if (r) {
  dev_err(&ddata->pdev->dev,
    "error disabling panel, issuing HW reset\n");
  dsicm_hw_reset(ddata);
 }

 in->ops.dsi->disable(in, 1, 0);

 ddata->enabled = 0;
}
