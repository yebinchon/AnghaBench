
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w100fb_par {unsigned long hsync_len; scalar_t__ blanked; } ;
struct fb_info {struct w100fb_par* par; } ;
struct device {int dummy; } ;


 struct fb_info* dev_get_drvdata (struct device*) ;

unsigned long w100fb_get_hsynclen(struct device *dev)
{
 struct fb_info *info = dev_get_drvdata(dev);
 struct w100fb_par *par=info->par;


 if (par->blanked)
  return 0;
 else
  return par->hsync_len;
}
