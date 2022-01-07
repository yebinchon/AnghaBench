
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int curves; } ;
struct fbtft_par {TYPE_1__ gamma; } ;
struct fb_info {struct fbtft_par* par; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct fb_info* dev_get_drvdata (struct device*) ;
 int sprintf_gamma (struct fbtft_par*,int ,char*) ;

__attribute__((used)) static ssize_t show_gamma_curve(struct device *device,
    struct device_attribute *attr, char *buf)
{
 struct fb_info *fb_info = dev_get_drvdata(device);
 struct fbtft_par *par = fb_info->par;

 return sprintf_gamma(par, par->gamma.curves, buf);
}
