
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lcd_device {int ops_lock; TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* set_contrast ) (struct lcd_device*,unsigned long) ;} ;


 int ENXIO ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,unsigned long) ;
 int stub1 (struct lcd_device*,unsigned long) ;
 struct lcd_device* to_lcd_device (struct device*) ;

__attribute__((used)) static ssize_t contrast_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 int rc;
 struct lcd_device *ld = to_lcd_device(dev);
 unsigned long contrast;

 rc = kstrtoul(buf, 0, &contrast);
 if (rc)
  return rc;

 rc = -ENXIO;

 mutex_lock(&ld->ops_lock);
 if (ld->ops && ld->ops->set_contrast) {
  pr_debug("set contrast to %lu\n", contrast);
  ld->ops->set_contrast(ld, contrast);
  rc = count;
 }
 mutex_unlock(&ld->ops_lock);

 return rc;
}
