
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct fb_info* dev_get_drvdata (struct device*) ;
 int simple_strtoul (char const*,char**,int ) ;
 int sstfb_setvgapass (struct fb_info*,int) ;

__attribute__((used)) static ssize_t store_vgapass(struct device *device, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct fb_info *info = dev_get_drvdata(device);
 char ** last = ((void*)0);
 int val;

 val = simple_strtoul(buf, last, 0);
 sstfb_setvgapass(info, val);

 return count;
}
