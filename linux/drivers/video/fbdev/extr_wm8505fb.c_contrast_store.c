
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8505fb_info {unsigned long contrast; } ;
struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 struct wm8505fb_info* to_wm8505fb_info (struct fb_info*) ;
 int wm8505fb_set_par (struct fb_info*) ;

__attribute__((used)) static ssize_t contrast_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct fb_info *info = dev_get_drvdata(dev);
 struct wm8505fb_info *fbi = to_wm8505fb_info(info);
 unsigned long tmp;

 if (kstrtoul(buf, 10, &tmp) || (tmp > 0xff))
  return -EINVAL;
 fbi->contrast = tmp;

 wm8505fb_set_par(info);

 return count;
}
