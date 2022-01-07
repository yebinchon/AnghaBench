
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvesafb_par {int vbe_modes_cnt; TYPE_1__* vbe_modes; } ;
struct fb_info {struct uvesafb_par* par; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int x_res; int y_res; int depth; int mode_id; } ;


 int PAGE_SIZE ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 scalar_t__ snprintf (char*,int,char*,int,int,int,int) ;

__attribute__((used)) static ssize_t uvesafb_show_vbe_modes(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct fb_info *info = dev_get_drvdata(dev);
 struct uvesafb_par *par = info->par;
 int ret = 0, i;

 for (i = 0; i < par->vbe_modes_cnt && ret < PAGE_SIZE; i++) {
  ret += snprintf(buf + ret, PAGE_SIZE - ret,
   "%dx%d-%d, 0x%.4x\n",
   par->vbe_modes[i].x_res, par->vbe_modes[i].y_res,
   par->vbe_modes[i].depth, par->vbe_modes[i].mode_id);
 }

 return ret;
}
