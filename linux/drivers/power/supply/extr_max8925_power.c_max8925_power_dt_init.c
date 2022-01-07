
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct max8925_power_pdata* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct max8925_power_pdata {int dummy; } ;



__attribute__((used)) static struct max8925_power_pdata *
max8925_power_dt_init(struct platform_device *pdev)
{
 return pdev->dev.platform_data;
}
