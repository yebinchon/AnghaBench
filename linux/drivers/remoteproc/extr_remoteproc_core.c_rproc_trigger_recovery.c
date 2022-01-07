
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct rproc {int name; int lock; int firmware; struct device dev; } ;
struct firmware {int dummy; } ;


 int dev_err (struct device*,char*,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,struct device*) ;
 int rproc_coredump (struct rproc*) ;
 int rproc_start (struct rproc*,struct firmware const*) ;
 int rproc_stop (struct rproc*,int) ;

int rproc_trigger_recovery(struct rproc *rproc)
{
 const struct firmware *firmware_p;
 struct device *dev = &rproc->dev;
 int ret;

 dev_err(dev, "recovering %s\n", rproc->name);

 ret = mutex_lock_interruptible(&rproc->lock);
 if (ret)
  return ret;

 ret = rproc_stop(rproc, 1);
 if (ret)
  goto unlock_mutex;


 rproc_coredump(rproc);


 ret = request_firmware(&firmware_p, rproc->firmware, dev);
 if (ret < 0) {
  dev_err(dev, "request_firmware failed: %d\n", ret);
  goto unlock_mutex;
 }


 ret = rproc_start(rproc, firmware_p);

 release_firmware(firmware_p);

unlock_mutex:
 mutex_unlock(&rproc->lock);
 return ret;
}
