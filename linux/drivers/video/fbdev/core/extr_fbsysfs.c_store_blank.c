
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int console_lock () ;
 int console_unlock () ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int fb_blank (struct fb_info*,int) ;
 int fbcon_fb_blanked (struct fb_info*,int) ;
 int simple_strtoul (char const*,char**,int ) ;

__attribute__((used)) static ssize_t store_blank(struct device *device,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct fb_info *fb_info = dev_get_drvdata(device);
 char *last = ((void*)0);
 int err, arg;

 arg = simple_strtoul(buf, &last, 0);
 console_lock();
 err = fb_blank(fb_info, arg);

 fbcon_fb_blanked(fb_info, arg);
 console_unlock();
 if (err < 0)
  return err;
 return count;
}
