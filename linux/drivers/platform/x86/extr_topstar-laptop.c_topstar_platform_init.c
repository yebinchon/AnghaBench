
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct topstar_laptop {int platform; } ;


 int ENOMEM ;
 int TOPSTAR_LAPTOP_CLASS ;
 int platform_device_add (int ) ;
 int platform_device_alloc (int ,int) ;
 int platform_device_put (int ) ;
 int platform_set_drvdata (int ,struct topstar_laptop*) ;

__attribute__((used)) static int topstar_platform_init(struct topstar_laptop *topstar)
{
 int err;

 topstar->platform = platform_device_alloc(TOPSTAR_LAPTOP_CLASS, -1);
 if (!topstar->platform)
  return -ENOMEM;

 platform_set_drvdata(topstar->platform, topstar);

 err = platform_device_add(topstar->platform);
 if (err)
  goto err_device_put;

 return 0;

err_device_put:
 platform_device_put(topstar->platform);
 return err;
}
