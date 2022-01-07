
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum omapfb_update_mode { ____Placeholder_omapfb_update_mode } omapfb_update_mode ;


 int PAGE_SIZE ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int omapfb_get_update_mode (struct fb_info*,int*) ;
 int snprintf (char*,int ,char*,unsigned int) ;

__attribute__((used)) static ssize_t show_upd_mode(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct fb_info *fbi = dev_get_drvdata(dev);
 enum omapfb_update_mode mode;
 int r;

 r = omapfb_get_update_mode(fbi, &mode);

 if (r)
  return r;

 return snprintf(buf, PAGE_SIZE, "%u\n", (unsigned)mode);
}
