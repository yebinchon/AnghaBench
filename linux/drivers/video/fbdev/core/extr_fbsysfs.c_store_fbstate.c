
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int console_lock () ;
 int console_unlock () ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int fb_set_suspend (struct fb_info*,int) ;
 int lock_fb_info (struct fb_info*) ;
 scalar_t__ simple_strtoul (char const*,char**,int ) ;
 int unlock_fb_info (struct fb_info*) ;

__attribute__((used)) static ssize_t store_fbstate(struct device *device,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct fb_info *fb_info = dev_get_drvdata(device);
 u32 state;
 char *last = ((void*)0);

 state = simple_strtoul(buf, &last, 0);

 console_lock();
 lock_fb_info(fb_info);

 fb_set_suspend(fb_info, (int)state);

 unlock_fb_info(fb_info);
 console_unlock();

 return count;
}
