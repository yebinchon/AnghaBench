
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_unregister (int *) ;
 int via_i2c_driver ;

void viafb_i2c_exit(void)
{
 platform_driver_unregister(&via_i2c_driver);
}
