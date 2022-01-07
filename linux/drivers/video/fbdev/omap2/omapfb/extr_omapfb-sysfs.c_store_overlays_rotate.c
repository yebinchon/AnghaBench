
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct omapfb_info {int num_overlays; int* rotation; int region; } ;
struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct omapfb_info* FB2OFB (struct fb_info*) ;
 int OMAPFB_MAX_OVL_PER_FB ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int lock_fb_info (struct fb_info*) ;
 int omapfb_apply_changes (struct fb_info*,int ) ;
 int omapfb_get_mem_region (int ) ;
 int omapfb_put_mem_region (int ) ;
 int simple_strtoul (char*,char**,int ) ;
 int strlen (char const*) ;
 int unlock_fb_info (struct fb_info*) ;

__attribute__((used)) static ssize_t store_overlays_rotate(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct fb_info *fbi = dev_get_drvdata(dev);
 struct omapfb_info *ofbi = FB2OFB(fbi);
 int num_ovls = 0, r, i;
 int len;
 bool changed = 0;
 u8 rotation[OMAPFB_MAX_OVL_PER_FB];

 len = strlen(buf);
 if (buf[len - 1] == '\n')
  len = len - 1;

 lock_fb_info(fbi);

 if (len > 0) {
  char *p = (char *)buf;

  while (p < buf + len) {
   int rot;

   if (num_ovls == ofbi->num_overlays) {
    r = -EINVAL;
    goto out;
   }

   rot = simple_strtoul(p, &p, 0);
   if (rot < 0 || rot > 3) {
    r = -EINVAL;
    goto out;
   }

   if (ofbi->rotation[num_ovls] != rot)
    changed = 1;

   rotation[num_ovls++] = rot;

   p++;
  }
 }

 if (num_ovls != ofbi->num_overlays) {
  r = -EINVAL;
  goto out;
 }

 if (changed) {
  for (i = 0; i < num_ovls; ++i)
   ofbi->rotation[i] = rotation[i];

  omapfb_get_mem_region(ofbi->region);

  r = omapfb_apply_changes(fbi, 0);

  omapfb_put_mem_region(ofbi->region);

  if (r)
   goto out;


 }

 r = count;
out:
 unlock_fb_info(fbi);

 return r;
}
