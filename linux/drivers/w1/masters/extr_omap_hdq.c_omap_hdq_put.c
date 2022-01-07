
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdq_data {scalar_t__ hdq_usecount; int hdq_mutex; int dev; } ;


 int EINTR ;
 int EINVAL ;
 int OMAP_HDQ_SYSCONFIG ;
 int OMAP_HDQ_SYSCONFIG_AUTOIDLE ;
 int THIS_MODULE ;
 int dev_dbg (int ,char*) ;
 int hdq_reg_out (struct hdq_data*,int ,int ) ;
 int module_put (int ) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static int omap_hdq_put(struct hdq_data *hdq_data)
{
 int ret = 0;

 ret = mutex_lock_interruptible(&hdq_data->hdq_mutex);
 if (ret < 0)
  return -EINTR;

 hdq_reg_out(hdq_data, OMAP_HDQ_SYSCONFIG,
      OMAP_HDQ_SYSCONFIG_AUTOIDLE);
 if (0 == hdq_data->hdq_usecount) {
  dev_dbg(hdq_data->dev, "attempt to decrement use count"
   " when it is zero");
  ret = -EINVAL;
 } else {
  hdq_data->hdq_usecount--;
  module_put(THIS_MODULE);
  if (0 == hdq_data->hdq_usecount)
   pm_runtime_put_sync(hdq_data->dev);
 }
 mutex_unlock(&hdq_data->hdq_mutex);

 return ret;
}
