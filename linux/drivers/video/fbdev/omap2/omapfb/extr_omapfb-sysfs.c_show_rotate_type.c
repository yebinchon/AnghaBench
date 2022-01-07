
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_info {int rotation_type; } ;
struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct omapfb_info* FB2OFB (struct fb_info*) ;
 int PAGE_SIZE ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t show_rotate_type(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct fb_info *fbi = dev_get_drvdata(dev);
 struct omapfb_info *ofbi = FB2OFB(fbi);

 return snprintf(buf, PAGE_SIZE, "%d\n", ofbi->rotation_type);
}
