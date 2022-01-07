
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sm501fb_info {int dev; struct fb_info** fb; } ;
struct TYPE_2__ {int id; } ;
struct fb_info {TYPE_1__ fix; int node; int mm_lock; } ;
typedef enum sm501_controller { ____Placeholder_sm501_controller } sm501_controller ;


 int dev_err (int ,char*,char const*) ;
 int dev_info (int ,char*,int ,int ) ;
 int mutex_init (int *) ;
 int register_framebuffer (struct fb_info*) ;
 int sm501_free_init_fb (struct sm501fb_info*,int) ;
 int sm501fb_init_fb (struct fb_info*,int,char const*) ;

__attribute__((used)) static int sm501fb_start_one(struct sm501fb_info *info,
        enum sm501_controller head, const char *drvname)
{
 struct fb_info *fbi = info->fb[head];
 int ret;

 if (!fbi)
  return 0;

 mutex_init(&info->fb[head]->mm_lock);

 ret = sm501fb_init_fb(info->fb[head], head, drvname);
 if (ret) {
  dev_err(info->dev, "cannot initialise fb %s\n", drvname);
  return ret;
 }

 ret = register_framebuffer(info->fb[head]);
 if (ret) {
  dev_err(info->dev, "failed to register fb %s\n", drvname);
  sm501_free_init_fb(info, head);
  return ret;
 }

 dev_info(info->dev, "fb%d: %s frame buffer\n", fbi->node, fbi->fix.id);

 return 0;
}
