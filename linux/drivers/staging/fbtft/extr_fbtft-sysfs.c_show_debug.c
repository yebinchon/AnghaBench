
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbtft_par {int debug; } ;
struct fb_info {struct fbtft_par* par; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t show_debug(struct device *device,
     struct device_attribute *attr, char *buf)
{
 struct fb_info *fb_info = dev_get_drvdata(device);
 struct fbtft_par *par = fb_info->par;

 return snprintf(buf, PAGE_SIZE, "%lu\n", par->debug);
}
