
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct panel_drv_data {int channel; struct omap_dss_device* in; TYPE_1__* pdev; } ;
struct TYPE_6__ {TYPE_2__* dsi; } ;
struct omap_dss_device {TYPE_3__ ops; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int (* connect ) (struct omap_dss_device*,struct omap_dss_device*) ;int (* request_vc ) (struct omap_dss_device*,int *) ;int (* set_vc_id ) (struct omap_dss_device*,int ,int ) ;int (* disconnect ) (struct omap_dss_device*,struct omap_dss_device*) ;int (* release_vc ) (struct omap_dss_device*,int ) ;} ;
struct TYPE_4__ {struct device dev; } ;


 int TCH ;
 int dev_err (struct device*,char*) ;
 scalar_t__ omapdss_device_is_connected (struct omap_dss_device*) ;
 int stub1 (struct omap_dss_device*,struct omap_dss_device*) ;
 int stub2 (struct omap_dss_device*,int *) ;
 int stub3 (struct omap_dss_device*,int ,int ) ;
 int stub4 (struct omap_dss_device*,int ) ;
 int stub5 (struct omap_dss_device*,struct omap_dss_device*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static int dsicm_connect(struct omap_dss_device *dssdev)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *in = ddata->in;
 struct device *dev = &ddata->pdev->dev;
 int r;

 if (omapdss_device_is_connected(dssdev))
  return 0;

 r = in->ops.dsi->connect(in, dssdev);
 if (r) {
  dev_err(dev, "Failed to connect to video source\n");
  return r;
 }

 r = in->ops.dsi->request_vc(ddata->in, &ddata->channel);
 if (r) {
  dev_err(dev, "failed to get virtual channel\n");
  goto err_req_vc;
 }

 r = in->ops.dsi->set_vc_id(ddata->in, ddata->channel, TCH);
 if (r) {
  dev_err(dev, "failed to set VC_ID\n");
  goto err_vc_id;
 }

 return 0;

err_vc_id:
 in->ops.dsi->release_vc(ddata->in, ddata->channel);
err_req_vc:
 in->ops.dsi->disconnect(in, dssdev);
 return r;
}
