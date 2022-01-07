
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvesafb_par {int nocrtc; } ;
struct fb_info {struct uvesafb_par* par; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t uvesafb_show_nocrtc(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct fb_info *info = dev_get_drvdata(dev);
 struct uvesafb_par *par = info->par;

 return snprintf(buf, PAGE_SIZE, "%d\n", par->nocrtc);
}
