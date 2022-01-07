
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct panel_drv_data {int channel; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* dsi; } ;
struct omap_dss_device {TYPE_2__ ops; } ;
struct TYPE_3__ {int (* dcs_write_nosync ) (struct omap_dss_device*,int ,int *,int) ;} ;


 int MIPI_DCS_ENTER_SLEEP_MODE ;
 int hw_guard_start (struct panel_drv_data*,int) ;
 int hw_guard_wait (struct panel_drv_data*) ;
 int stub1 (struct omap_dss_device*,int ,int *,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int dsicm_sleep_in(struct panel_drv_data *ddata)

{
 struct omap_dss_device *in = ddata->in;
 u8 cmd;
 int r;

 hw_guard_wait(ddata);

 cmd = MIPI_DCS_ENTER_SLEEP_MODE;
 r = in->ops.dsi->dcs_write_nosync(in, ddata->channel, &cmd, 1);
 if (r)
  return r;

 hw_guard_start(ddata, 120);

 usleep_range(5000, 10000);

 return 0;
}
