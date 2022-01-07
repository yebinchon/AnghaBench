
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct panel_drv_data {int lock; scalar_t__ enabled; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* dsi; } ;
struct omap_dss_device {TYPE_2__ ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int (* bus_unlock ) (struct omap_dss_device*) ;int (* bus_lock ) (struct omap_dss_device*) ;} ;


 int ENODEV ;
 int PAGE_SIZE ;
 struct panel_drv_data* dev_get_drvdata (struct device*) ;
 int dsicm_get_id (struct panel_drv_data*,int*,int*,int*) ;
 int dsicm_wake_up (struct panel_drv_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,int,int,int) ;
 int stub1 (struct omap_dss_device*) ;
 int stub2 (struct omap_dss_device*) ;

__attribute__((used)) static ssize_t dsicm_hw_revision_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct panel_drv_data *ddata = dev_get_drvdata(dev);
 struct omap_dss_device *in = ddata->in;
 u8 id1, id2, id3;
 int r;

 mutex_lock(&ddata->lock);

 if (ddata->enabled) {
  in->ops.dsi->bus_lock(in);

  r = dsicm_wake_up(ddata);
  if (!r)
   r = dsicm_get_id(ddata, &id1, &id2, &id3);

  in->ops.dsi->bus_unlock(in);
 } else {
  r = -ENODEV;
 }

 mutex_unlock(&ddata->lock);

 if (r)
  return r;

 return snprintf(buf, PAGE_SIZE, "%02x.%02x.%02x\n", id1, id2, id3);
}
