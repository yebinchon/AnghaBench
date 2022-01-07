
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct topstar_laptop {int platform; } ;


 int platform_device_unregister (int ) ;

__attribute__((used)) static void topstar_platform_exit(struct topstar_laptop *topstar)
{
 platform_device_unregister(topstar->platform);
}
