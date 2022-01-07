
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct fb_info* dev_get_drvdata (struct device*) ;
 int kstrtouint (char const*,int ,unsigned int*) ;
 int omapfb_set_update_mode (struct fb_info*,unsigned int) ;

__attribute__((used)) static ssize_t store_upd_mode(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct fb_info *fbi = dev_get_drvdata(dev);
 unsigned mode;
 int r;

 r = kstrtouint(buf, 0, &mode);
 if (r)
  return r;

 r = omapfb_set_update_mode(fbi, mode);
 if (r)
  return r;

 return count;
}
