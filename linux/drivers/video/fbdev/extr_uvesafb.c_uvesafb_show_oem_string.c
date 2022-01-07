
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oem_string_ptr; } ;
struct uvesafb_par {TYPE_1__ vbe_ib; } ;
struct fb_info {struct uvesafb_par* par; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t uvesafb_show_oem_string(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct fb_info *info = dev_get_drvdata(dev);
 struct uvesafb_par *par = info->par;

 if (par->vbe_ib.oem_string_ptr)
  return snprintf(buf, PAGE_SIZE, "%s\n",
   (char *)(&par->vbe_ib) + par->vbe_ib.oem_string_ptr);
 else
  return 0;
}
