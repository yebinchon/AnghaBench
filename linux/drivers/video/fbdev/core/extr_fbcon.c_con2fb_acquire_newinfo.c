
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {int dummy; } ;
struct fbcon_ops {int cur_blink_jiffies; struct fb_info* info; } ;
struct fb_info {TYPE_1__* fbops; struct fbcon_ops* fbcon_par; } ;
struct TYPE_2__ {int owner; scalar_t__ (* fb_open ) (struct fb_info*,int ) ;} ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int* con2fb_map ;
 struct fbcon_ops* kzalloc (int,int ) ;
 int module_put (int ) ;
 int set_blitting_type (struct vc_data*,struct fb_info*) ;
 scalar_t__ stub1 (struct fb_info*,int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static int con2fb_acquire_newinfo(struct vc_data *vc, struct fb_info *info,
      int unit, int oldidx)
{
 struct fbcon_ops *ops = ((void*)0);
 int err = 0;

 if (!try_module_get(info->fbops->owner))
  err = -ENODEV;

 if (!err && info->fbops->fb_open &&
     info->fbops->fb_open(info, 0))
  err = -ENODEV;

 if (!err) {
  ops = kzalloc(sizeof(struct fbcon_ops), GFP_KERNEL);
  if (!ops)
   err = -ENOMEM;
 }

 if (!err) {
  ops->cur_blink_jiffies = HZ / 5;
  ops->info = info;
  info->fbcon_par = ops;

  if (vc)
   set_blitting_type(vc, info);
 }

 if (err) {
  con2fb_map[unit] = oldidx;
  module_put(info->fbops->owner);
 }

 return err;
}
