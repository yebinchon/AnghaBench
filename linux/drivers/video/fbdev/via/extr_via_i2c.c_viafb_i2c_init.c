
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_register (int *) ;
 int via_i2c_driver ;

int viafb_i2c_init(void)
{
 return platform_driver_register(&via_i2c_driver);
}
