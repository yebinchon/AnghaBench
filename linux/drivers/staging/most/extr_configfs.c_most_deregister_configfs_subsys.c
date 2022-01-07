
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct core_component {int name; } ;
struct TYPE_2__ {int subsys; } ;


 int configfs_unregister_subsystem (int *) ;
 int most_cdev_subsys ;
 int most_net_subsys ;
 TYPE_1__ most_sound_subsys ;
 int most_video_subsys ;
 int strcmp (int ,char*) ;

void most_deregister_configfs_subsys(struct core_component *c)
{
 if (!strcmp(c->name, "cdev"))
  configfs_unregister_subsystem(&most_cdev_subsys);
 else if (!strcmp(c->name, "net"))
  configfs_unregister_subsystem(&most_net_subsys);
 else if (!strcmp(c->name, "video"))
  configfs_unregister_subsystem(&most_video_subsys);
 else if (!strcmp(c->name, "sound"))
  configfs_unregister_subsystem(&most_sound_subsys.subsys);
}
