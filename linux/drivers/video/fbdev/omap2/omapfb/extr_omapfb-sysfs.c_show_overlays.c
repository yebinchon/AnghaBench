
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_info {int num_overlays; struct omap_overlay** overlays; struct omapfb2_device* fbdev; } ;
struct omapfb2_device {int num_overlays; struct omap_overlay** overlays; } ;
struct omap_overlay {int dummy; } ;
struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct omapfb_info* FB2OFB (struct fb_info*) ;
 int PAGE_SIZE ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int lock_fb_info (struct fb_info*) ;
 int omapfb_lock (struct omapfb2_device*) ;
 int omapfb_unlock (struct omapfb2_device*) ;
 int snprintf (char*,int,char*,...) ;
 int unlock_fb_info (struct fb_info*) ;

__attribute__((used)) static ssize_t show_overlays(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct fb_info *fbi = dev_get_drvdata(dev);
 struct omapfb_info *ofbi = FB2OFB(fbi);
 struct omapfb2_device *fbdev = ofbi->fbdev;
 ssize_t l = 0;
 int t;

 lock_fb_info(fbi);
 omapfb_lock(fbdev);

 for (t = 0; t < ofbi->num_overlays; t++) {
  struct omap_overlay *ovl = ofbi->overlays[t];
  int ovlnum;

  for (ovlnum = 0; ovlnum < fbdev->num_overlays; ++ovlnum)
   if (ovl == fbdev->overlays[ovlnum])
    break;

  l += snprintf(buf + l, PAGE_SIZE - l, "%s%d",
    t == 0 ? "" : ",", ovlnum);
 }

 l += snprintf(buf + l, PAGE_SIZE - l, "\n");

 omapfb_unlock(fbdev);
 unlock_fb_info(fbi);

 return l;
}
