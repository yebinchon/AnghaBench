
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int atomic_add_return (int,int *) ;
 int atomic_dec (int *) ;
 int platform_device_add (int *) ;
 int * platform_device_alloc (char*,int) ;
 int platform_device_put (int *) ;
 int platform_driver_register (int *) ;
 int platform_driver_unregister (int *) ;
 int * sony_pf_device ;
 int sony_pf_driver ;
 int sony_pf_users ;

__attribute__((used)) static int sony_pf_add(void)
{
 int ret = 0;


 if (atomic_add_return(1, &sony_pf_users) > 1)
  return 0;

 ret = platform_driver_register(&sony_pf_driver);
 if (ret)
  goto out;

 sony_pf_device = platform_device_alloc("sony-laptop", -1);
 if (!sony_pf_device) {
  ret = -ENOMEM;
  goto out_platform_registered;
 }

 ret = platform_device_add(sony_pf_device);
 if (ret)
  goto out_platform_alloced;

 return 0;

      out_platform_alloced:
 platform_device_put(sony_pf_device);
 sony_pf_device = ((void*)0);
      out_platform_registered:
 platform_driver_unregister(&sony_pf_driver);
      out:
 atomic_dec(&sony_pf_users);
 return ret;
}
