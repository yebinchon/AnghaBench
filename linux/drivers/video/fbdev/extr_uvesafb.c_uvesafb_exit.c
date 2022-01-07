
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct uvesafb_ktask {TYPE_1__ t; } ;
struct TYPE_5__ {int driver; } ;


 int TF_EXIT ;
 int cn_del_callback (int *) ;
 int driver_attr_v86d ;
 int driver_remove_file (int *,int *) ;
 int platform_device_unregister (int ) ;
 int platform_driver_unregister (TYPE_2__*) ;
 int uvesafb_cn_id ;
 int uvesafb_device ;
 TYPE_2__ uvesafb_driver ;
 int uvesafb_exec (struct uvesafb_ktask*) ;
 int uvesafb_free (struct uvesafb_ktask*) ;
 struct uvesafb_ktask* uvesafb_prep () ;
 scalar_t__ v86d_started ;

__attribute__((used)) static void uvesafb_exit(void)
{
 struct uvesafb_ktask *task;

 if (v86d_started) {
  task = uvesafb_prep();
  if (task) {
   task->t.flags = TF_EXIT;
   uvesafb_exec(task);
   uvesafb_free(task);
  }
 }

 cn_del_callback(&uvesafb_cn_id);
 driver_remove_file(&uvesafb_driver.driver, &driver_attr_v86d);
 platform_device_unregister(uvesafb_device);
 platform_driver_unregister(&uvesafb_driver);
}
