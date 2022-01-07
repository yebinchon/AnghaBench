
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c2410_wdt_variant {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {scalar_t__ driver_data; } ;


 struct s3c2410_wdt_variant* of_device_get_match_data (int *) ;
 TYPE_1__* platform_get_device_id (struct platform_device*) ;

__attribute__((used)) static inline const struct s3c2410_wdt_variant *
s3c2410_get_wdt_drv_data(struct platform_device *pdev)
{
 const struct s3c2410_wdt_variant *variant;

 variant = of_device_get_match_data(&pdev->dev);
 if (!variant) {

  variant = (struct s3c2410_wdt_variant *)
      platform_get_device_id(pdev)->driver_data;
 }

 return variant;
}
