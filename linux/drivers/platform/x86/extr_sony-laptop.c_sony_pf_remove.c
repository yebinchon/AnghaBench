
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_dec_and_test (int *) ;
 int platform_device_unregister (int ) ;
 int platform_driver_unregister (int *) ;
 int sony_pf_device ;
 int sony_pf_driver ;
 int sony_pf_users ;

__attribute__((used)) static void sony_pf_remove(void)
{

 if (!atomic_dec_and_test(&sony_pf_users))
  return;

 platform_device_unregister(sony_pf_device);
 platform_driver_unregister(&sony_pf_driver);
}
