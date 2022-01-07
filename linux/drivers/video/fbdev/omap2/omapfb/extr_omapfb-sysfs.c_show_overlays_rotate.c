
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_info {int num_overlays; int * rotation; } ;
struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct omapfb_info* FB2OFB (struct fb_info*) ;
 int PAGE_SIZE ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int lock_fb_info (struct fb_info*) ;
 int snprintf (char*,int,char*,...) ;
 int unlock_fb_info (struct fb_info*) ;

__attribute__((used)) static ssize_t show_overlays_rotate(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct fb_info *fbi = dev_get_drvdata(dev);
 struct omapfb_info *ofbi = FB2OFB(fbi);
 ssize_t l = 0;
 int t;

 lock_fb_info(fbi);

 for (t = 0; t < ofbi->num_overlays; t++) {
  l += snprintf(buf + l, PAGE_SIZE - l, "%s%d",
    t == 0 ? "" : ",", ofbi->rotation[t]);
 }

 l += snprintf(buf + l, PAGE_SIZE - l, "\n");

 unlock_fb_info(fbi);

 return l;
}
