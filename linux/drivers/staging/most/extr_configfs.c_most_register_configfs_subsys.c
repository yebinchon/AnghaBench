
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct core_component {int name; } ;
struct TYPE_2__ {int subsys; } ;


 int ENODEV ;
 int configfs_register_subsystem (int *) ;
 int most_cdev_subsys ;
 int most_net_subsys ;
 TYPE_1__ most_sound_subsys ;
 int most_video_subsys ;
 int pr_err (char*,int,int ) ;
 int strcmp (int ,char*) ;

int most_register_configfs_subsys(struct core_component *c)
{
 int ret;

 if (!strcmp(c->name, "cdev"))
  ret = configfs_register_subsystem(&most_cdev_subsys);
 else if (!strcmp(c->name, "net"))
  ret = configfs_register_subsystem(&most_net_subsys);
 else if (!strcmp(c->name, "video"))
  ret = configfs_register_subsystem(&most_video_subsys);
 else if (!strcmp(c->name, "sound"))
  ret = configfs_register_subsystem(&most_sound_subsys.subsys);
 else
  return -ENODEV;

 if (ret) {
  pr_err("Error %d while registering subsystem %s\n",
         ret, c->name);
 }
 return ret;
}
