
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_3__ {int of_node; } ;


 int of_genpd_del_provider (int ) ;

__attribute__((used)) static int zynqmp_gpd_remove(struct platform_device *pdev)
{
 of_genpd_del_provider(pdev->dev.parent->of_node);

 return 0;
}
