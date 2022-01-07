
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w100fb_par {int fastpll_mode; } ;
struct fb_info {struct w100fb_par* par; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct fb_info* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t fastpllclk_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct fb_info *info = dev_get_drvdata(dev);
 struct w100fb_par *par=info->par;

 return sprintf(buf, "%d\n",par->fastpll_mode);
}
