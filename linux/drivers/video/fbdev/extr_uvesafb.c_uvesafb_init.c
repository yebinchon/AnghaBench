
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int driver; } ;


 int ENODEV ;
 int ENOMEM ;
 int cn_add_callback (int *,char*,int ) ;
 int cn_del_callback (int *) ;
 int driver_attr_v86d ;
 int driver_create_file (int *,int *) ;
 scalar_t__ fb_get_options (char*,char**) ;
 int platform_device_add (scalar_t__) ;
 scalar_t__ platform_device_alloc (char*,int ) ;
 int platform_device_put (scalar_t__) ;
 int platform_driver_register (TYPE_1__*) ;
 int platform_driver_unregister (TYPE_1__*) ;
 int pr_warn (char*) ;
 int uvesafb_cn_callback ;
 int uvesafb_cn_id ;
 scalar_t__ uvesafb_device ;
 TYPE_1__ uvesafb_driver ;
 int uvesafb_setup (char*) ;

__attribute__((used)) static int uvesafb_init(void)
{
 int err;


 char *option = ((void*)0);

 if (fb_get_options("uvesafb", &option))
  return -ENODEV;
 uvesafb_setup(option);

 err = cn_add_callback(&uvesafb_cn_id, "uvesafb", uvesafb_cn_callback);
 if (err)
  return err;

 err = platform_driver_register(&uvesafb_driver);

 if (!err) {
  uvesafb_device = platform_device_alloc("uvesafb", 0);
  if (uvesafb_device)
   err = platform_device_add(uvesafb_device);
  else
   err = -ENOMEM;

  if (err) {
   platform_device_put(uvesafb_device);
   platform_driver_unregister(&uvesafb_driver);
   cn_del_callback(&uvesafb_cn_id);
   return err;
  }

  err = driver_create_file(&uvesafb_driver.driver,
    &driver_attr_v86d);
  if (err) {
   pr_warn("failed to register attributes\n");
   err = 0;
  }
 }
 return err;
}
