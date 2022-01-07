
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct panel_drv_data {int lock; int channel; TYPE_3__* pdev; int enabled; struct omap_dss_device* in; } ;
struct TYPE_10__ {TYPE_4__* dsi; } ;
struct TYPE_6__ {int x_res; int y_res; } ;
struct TYPE_7__ {TYPE_1__ timings; } ;
struct omap_dss_device {TYPE_5__ ops; int * dev; TYPE_2__ panel; } ;
struct TYPE_9__ {int (* set_max_rx_packet_size ) (struct omap_dss_device*,int ,int) ;int (* dcs_read ) (struct omap_dss_device*,int ,int,void*,size_t) ;int (* bus_unlock ) (struct omap_dss_device*) ;int (* bus_lock ) (struct omap_dss_device*) ;} ;
struct TYPE_8__ {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int current ;
 int dev_err (int *,char*) ;
 int dsicm_set_update_window (struct panel_drv_data*,int,int,int,int) ;
 int dsicm_wake_up (struct panel_drv_data*) ;
 size_t min (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ signal_pending (int ) ;
 int stub1 (struct omap_dss_device*) ;
 int stub2 (struct omap_dss_device*,int ,int) ;
 int stub3 (struct omap_dss_device*,int ,int,void*,size_t) ;
 int stub4 (struct omap_dss_device*,int ,int) ;
 int stub5 (struct omap_dss_device*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static int dsicm_memory_read(struct omap_dss_device *dssdev,
  void *buf, size_t size,
  u16 x, u16 y, u16 w, u16 h)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;
 int r;
 int first = 1;
 int plen;
 unsigned buf_used = 0;

 if (size < w * h * 3)
  return -ENOMEM;

 mutex_lock(&ddata->lock);

 if (!ddata->enabled) {
  r = -ENODEV;
  goto err1;
 }

 size = min(w * h * 3,
   dssdev->panel.timings.x_res *
   dssdev->panel.timings.y_res * 3);

 in->ops.dsi->bus_lock(in);

 r = dsicm_wake_up(ddata);
 if (r)
  goto err2;




 if (size % 2)
  plen = 1;
 else
  plen = 2;

 dsicm_set_update_window(ddata, x, y, w, h);

 r = in->ops.dsi->set_max_rx_packet_size(in, ddata->channel, plen);
 if (r)
  goto err2;

 while (buf_used < size) {
  u8 dcs_cmd = first ? 0x2e : 0x3e;
  first = 0;

  r = in->ops.dsi->dcs_read(in, ddata->channel, dcs_cmd,
    buf + buf_used, size - buf_used);

  if (r < 0) {
   dev_err(dssdev->dev, "read error\n");
   goto err3;
  }

  buf_used += r;

  if (r < plen) {
   dev_err(&ddata->pdev->dev, "short read\n");
   break;
  }

  if (signal_pending(current)) {
   dev_err(&ddata->pdev->dev, "signal pending, "
     "aborting memory read\n");
   r = -ERESTARTSYS;
   goto err3;
  }
 }

 r = buf_used;

err3:
 in->ops.dsi->set_max_rx_packet_size(in, ddata->channel, 1);
err2:
 in->ops.dsi->bus_unlock(in);
err1:
 mutex_unlock(&ddata->lock);
 return r;
}
