
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mmphw_driver ;
 int platform_driver_register (int *) ;

__attribute__((used)) static int mmphw_init(void)
{
 return platform_driver_register(&mmphw_driver);
}
