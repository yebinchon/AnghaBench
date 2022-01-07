
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vudc {int lock; int desc_cached; int dev_desc; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int ENODEV ;
 scalar_t__ dev_get_drvdata (struct device*) ;
 struct device* kobj_to_dev (struct kobject*) ;
 int memcpy (char*,char*,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t dev_desc_read(struct file *file, struct kobject *kobj,
        struct bin_attribute *attr, char *out,
        loff_t off, size_t count)
{
 struct device *dev = kobj_to_dev(kobj);
 struct vudc *udc = (struct vudc *)dev_get_drvdata(dev);
 char *desc_ptr = (char *) &udc->dev_desc;
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&udc->lock, flags);
 if (!udc->desc_cached) {
  ret = -ENODEV;
  goto unlock;
 }

 memcpy(out, desc_ptr + off, count);
 ret = count;
unlock:
 spin_unlock_irqrestore(&udc->lock, flags);
 return ret;
}
