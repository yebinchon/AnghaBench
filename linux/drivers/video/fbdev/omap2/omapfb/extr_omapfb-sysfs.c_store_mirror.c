
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_info {int mirror; int region; } ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {struct fb_var_screeninfo var; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int new_var ;


 struct omapfb_info* FB2OFB (struct fb_info*) ;
 int check_fb_var (struct fb_info*,struct fb_var_screeninfo*) ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int lock_fb_info (struct fb_info*) ;
 int memcpy (struct fb_var_screeninfo*,struct fb_var_screeninfo*,int) ;
 int omapfb_apply_changes (struct fb_info*,int ) ;
 int omapfb_get_mem_region (int ) ;
 int omapfb_put_mem_region (int ) ;
 int set_fb_fix (struct fb_info*) ;
 int strtobool (char const*,int*) ;
 int unlock_fb_info (struct fb_info*) ;

__attribute__((used)) static ssize_t store_mirror(struct device *dev,
  struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct fb_info *fbi = dev_get_drvdata(dev);
 struct omapfb_info *ofbi = FB2OFB(fbi);
 bool mirror;
 int r;
 struct fb_var_screeninfo new_var;

 r = strtobool(buf, &mirror);
 if (r)
  return r;

 lock_fb_info(fbi);

 ofbi->mirror = mirror;

 omapfb_get_mem_region(ofbi->region);

 memcpy(&new_var, &fbi->var, sizeof(new_var));
 r = check_fb_var(fbi, &new_var);
 if (r)
  goto out;
 memcpy(&fbi->var, &new_var, sizeof(fbi->var));

 set_fb_fix(fbi);

 r = omapfb_apply_changes(fbi, 0);
 if (r)
  goto out;

 r = count;
out:
 omapfb_put_mem_region(ofbi->region);

 unlock_fb_info(fbi);

 return r;
}
