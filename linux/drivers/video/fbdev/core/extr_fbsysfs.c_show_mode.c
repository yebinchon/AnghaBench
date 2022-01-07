
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct fb_info* dev_get_drvdata (struct device*) ;
 int mode_string (char*,int ,int ) ;

__attribute__((used)) static ssize_t show_mode(struct device *device, struct device_attribute *attr,
    char *buf)
{
 struct fb_info *fb_info = dev_get_drvdata(device);

 if (!fb_info->mode)
  return 0;

 return mode_string(buf, 0, fb_info->mode);
}
