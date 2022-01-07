
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {scalar_t__ state; char* firmware; int lock; int name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ RPROC_OFFLINE ;
 int dev_err (struct device*,char*,...) ;
 int kfree (char*) ;
 char* kstrndup (char const*,int,int ) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int strcspn (char const*,char*) ;
 struct rproc* to_rproc (struct device*) ;

__attribute__((used)) static ssize_t firmware_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct rproc *rproc = to_rproc(dev);
 char *p;
 int err, len = count;

 err = mutex_lock_interruptible(&rproc->lock);
 if (err) {
  dev_err(dev, "can't lock rproc %s: %d\n", rproc->name, err);
  return -EINVAL;
 }

 if (rproc->state != RPROC_OFFLINE) {
  dev_err(dev, "can't change firmware while running\n");
  err = -EBUSY;
  goto out;
 }

 len = strcspn(buf, "\n");
 if (!len) {
  dev_err(dev, "can't provide a NULL firmware\n");
  err = -EINVAL;
  goto out;
 }

 p = kstrndup(buf, len, GFP_KERNEL);
 if (!p) {
  err = -ENOMEM;
  goto out;
 }

 kfree(rproc->firmware);
 rproc->firmware = p;
out:
 mutex_unlock(&rproc->lock);

 return err ? err : count;
}
