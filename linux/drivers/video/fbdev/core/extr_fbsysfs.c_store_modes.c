
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_videomode {int dummy; } ;
struct fb_info {int modelist; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int LIST_HEAD (int ) ;
 int console_lock () ;
 int console_unlock () ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int fb_destroy_modelist (int *) ;
 scalar_t__ fb_new_modelist (struct fb_info*) ;
 int fb_videomode_to_modelist (struct fb_videomode const*,int,int *) ;
 int list_splice (int *,int *) ;
 int lock_fb_info (struct fb_info*) ;
 int old_list ;
 int unlock_fb_info (struct fb_info*) ;

__attribute__((used)) static ssize_t store_modes(struct device *device,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct fb_info *fb_info = dev_get_drvdata(device);
 LIST_HEAD(old_list);
 int i = count / sizeof(struct fb_videomode);

 if (i * sizeof(struct fb_videomode) != count)
  return -EINVAL;

 console_lock();
 lock_fb_info(fb_info);

 list_splice(&fb_info->modelist, &old_list);
 fb_videomode_to_modelist((const struct fb_videomode *)buf, i,
     &fb_info->modelist);
 if (fb_new_modelist(fb_info)) {
  fb_destroy_modelist(&fb_info->modelist);
  list_splice(&old_list, &fb_info->modelist);
 } else
  fb_destroy_modelist(&old_list);

 unlock_fb_info(fb_info);
 console_unlock();

 return 0;
}
