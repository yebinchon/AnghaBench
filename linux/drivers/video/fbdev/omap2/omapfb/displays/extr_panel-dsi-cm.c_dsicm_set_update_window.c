
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct panel_drv_data {int channel; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* dsi; } ;
struct omap_dss_device {TYPE_2__ ops; } ;
typedef int buf ;
struct TYPE_3__ {int (* dcs_write_nosync ) (struct omap_dss_device*,int ,int*,int) ;int (* bta_sync ) (struct omap_dss_device*,int ) ;} ;


 int MIPI_DCS_SET_COLUMN_ADDRESS ;
 int MIPI_DCS_SET_PAGE_ADDRESS ;
 int stub1 (struct omap_dss_device*,int ,int*,int) ;
 int stub2 (struct omap_dss_device*,int ,int*,int) ;
 int stub3 (struct omap_dss_device*,int ) ;

__attribute__((used)) static int dsicm_set_update_window(struct panel_drv_data *ddata,
  u16 x, u16 y, u16 w, u16 h)
{
 struct omap_dss_device *in = ddata->in;
 int r;
 u16 x1 = x;
 u16 x2 = x + w - 1;
 u16 y1 = y;
 u16 y2 = y + h - 1;

 u8 buf[5];
 buf[0] = MIPI_DCS_SET_COLUMN_ADDRESS;
 buf[1] = (x1 >> 8) & 0xff;
 buf[2] = (x1 >> 0) & 0xff;
 buf[3] = (x2 >> 8) & 0xff;
 buf[4] = (x2 >> 0) & 0xff;

 r = in->ops.dsi->dcs_write_nosync(in, ddata->channel, buf, sizeof(buf));
 if (r)
  return r;

 buf[0] = MIPI_DCS_SET_PAGE_ADDRESS;
 buf[1] = (y1 >> 8) & 0xff;
 buf[2] = (y1 >> 0) & 0xff;
 buf[3] = (y2 >> 8) & 0xff;
 buf[4] = (y2 >> 0) & 0xff;

 r = in->ops.dsi->dcs_write_nosync(in, ddata->channel, buf, sizeof(buf));
 if (r)
  return r;

 in->ops.dsi->bta_sync(in, ddata->channel);

 return r;
}
