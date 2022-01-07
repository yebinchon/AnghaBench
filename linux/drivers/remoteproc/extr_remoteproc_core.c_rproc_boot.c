
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct rproc {int name; scalar_t__ state; int lock; int power; int firmware; struct device dev; } ;
struct firmware {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ RPROC_DELETED ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int dev_err (struct device*,char*,int,...) ;
 int dev_info (struct device*,char*,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,struct device*) ;
 int rproc_fw_boot (struct rproc*,struct firmware const*) ;

int rproc_boot(struct rproc *rproc)
{
 const struct firmware *firmware_p;
 struct device *dev;
 int ret;

 if (!rproc) {
  pr_err("invalid rproc handle\n");
  return -EINVAL;
 }

 dev = &rproc->dev;

 ret = mutex_lock_interruptible(&rproc->lock);
 if (ret) {
  dev_err(dev, "can't lock rproc %s: %d\n", rproc->name, ret);
  return ret;
 }

 if (rproc->state == RPROC_DELETED) {
  ret = -ENODEV;
  dev_err(dev, "can't boot deleted rproc %s\n", rproc->name);
  goto unlock_mutex;
 }


 if (atomic_inc_return(&rproc->power) > 1) {
  ret = 0;
  goto unlock_mutex;
 }

 dev_info(dev, "powering up %s\n", rproc->name);


 ret = request_firmware(&firmware_p, rproc->firmware, dev);
 if (ret < 0) {
  dev_err(dev, "request_firmware failed: %d\n", ret);
  goto downref_rproc;
 }

 ret = rproc_fw_boot(rproc, firmware_p);

 release_firmware(firmware_p);

downref_rproc:
 if (ret)
  atomic_dec(&rproc->power);
unlock_mutex:
 mutex_unlock(&rproc->lock);
 return ret;
}
