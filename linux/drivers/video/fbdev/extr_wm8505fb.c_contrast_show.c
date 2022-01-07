
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8505fb_info {int contrast; } ;
struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct fb_info* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct wm8505fb_info* to_wm8505fb_info (struct fb_info*) ;

__attribute__((used)) static ssize_t contrast_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct fb_info *info = dev_get_drvdata(dev);
 struct wm8505fb_info *fbi = to_wm8505fb_info(info);

 return sprintf(buf, "%u\n", fbi->contrast);
}
