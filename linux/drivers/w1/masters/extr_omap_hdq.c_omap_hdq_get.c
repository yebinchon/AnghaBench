
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdq_data {int hdq_usecount; int mode; int hdq_mutex; int dev; } ;


 int EINTR ;
 int EINVAL ;
 int OMAP_HDQ_CTRL_STATUS ;
 int OMAP_HDQ_CTRL_STATUS_CLOCKENABLE ;
 int OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK ;
 int OMAP_HDQ_INT_STATUS ;
 int OMAP_HDQ_MAX_USER ;
 int OMAP_HDQ_SYSCONFIG ;
 int OMAP_HDQ_SYSCONFIG_NOIDLE ;
 int OMAP_HDQ_SYSSTATUS ;
 int OMAP_HDQ_SYSSTATUS_RESETDONE ;
 int THIS_MODULE ;
 int _omap_hdq_reset (struct hdq_data*) ;
 int dev_dbg (int ,char*) ;
 int hdq_reg_in (struct hdq_data*,int ) ;
 int hdq_reg_out (struct hdq_data*,int ,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static int omap_hdq_get(struct hdq_data *hdq_data)
{
 int ret = 0;

 ret = mutex_lock_interruptible(&hdq_data->hdq_mutex);
 if (ret < 0) {
  ret = -EINTR;
  goto rtn;
 }

 if (OMAP_HDQ_MAX_USER == hdq_data->hdq_usecount) {
  dev_dbg(hdq_data->dev, "attempt to exceed the max use count");
  ret = -EINVAL;
  goto out;
 } else {
  hdq_data->hdq_usecount++;
  try_module_get(THIS_MODULE);
  if (1 == hdq_data->hdq_usecount) {

   pm_runtime_get_sync(hdq_data->dev);


   if (!(hdq_reg_in(hdq_data, OMAP_HDQ_SYSSTATUS) &
    OMAP_HDQ_SYSSTATUS_RESETDONE)) {
    ret = _omap_hdq_reset(hdq_data);
    if (ret)

     hdq_data->hdq_usecount--;
   } else {

    hdq_reg_out(hdq_data, OMAP_HDQ_CTRL_STATUS,
     OMAP_HDQ_CTRL_STATUS_CLOCKENABLE |
     OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK |
     hdq_data->mode);
    hdq_reg_out(hdq_data, OMAP_HDQ_SYSCONFIG,
     OMAP_HDQ_SYSCONFIG_NOIDLE);
    hdq_reg_in(hdq_data, OMAP_HDQ_INT_STATUS);
   }
  }
 }

out:
 mutex_unlock(&hdq_data->hdq_mutex);
rtn:
 return ret;
}
