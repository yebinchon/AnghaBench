
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_overlay {unsigned int mode; scalar_t__ enabled; } ;
struct fb_info {struct sh_mobile_lcdc_overlay* par; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 unsigned int LCDC_OVERLAY_BLEND ;
 unsigned int LCDC_OVERLAY_ROP3 ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 scalar_t__ isspace (char) ;
 int sh_mobile_lcdc_overlay_setup (struct sh_mobile_lcdc_overlay*) ;
 unsigned int simple_strtoul (char const*,char**,int) ;

__attribute__((used)) static ssize_t
overlay_mode_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct fb_info *info = dev_get_drvdata(dev);
 struct sh_mobile_lcdc_overlay *ovl = info->par;
 unsigned int mode;
 char *endp;

 mode = simple_strtoul(buf, &endp, 10);
 if (isspace(*endp))
  endp++;

 if (endp - buf != count)
  return -EINVAL;

 if (mode != LCDC_OVERLAY_BLEND && mode != LCDC_OVERLAY_ROP3)
  return -EINVAL;

 if (ovl->mode != mode) {
  ovl->mode = mode;

  if (ovl->enabled)
   sh_mobile_lcdc_overlay_setup(ovl);
 }

 return count;
}
