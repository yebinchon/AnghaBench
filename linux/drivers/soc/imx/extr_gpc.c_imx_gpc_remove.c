
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {int base; } ;


 size_t GPC_PGC_DOMAIN_ARM ;
 size_t GPC_PGC_DOMAIN_PU ;
 TYPE_2__* imx_gpc_domains ;
 int imx_pgc_put_clocks (TYPE_2__*) ;
 int of_genpd_del_provider (int ) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_property_read_bool (int ,char*) ;
 int pm_genpd_remove (int *) ;

__attribute__((used)) static int imx_gpc_remove(struct platform_device *pdev)
{
 struct device_node *pgc_node;
 int ret;

 pgc_node = of_get_child_by_name(pdev->dev.of_node, "pgc");


 if (!of_property_read_bool(pdev->dev.of_node, "#power-domain-cells") &&
     !pgc_node)
  return 0;





 if (!pgc_node) {
  of_genpd_del_provider(pdev->dev.of_node);

  ret = pm_genpd_remove(&imx_gpc_domains[GPC_PGC_DOMAIN_PU].base);
  if (ret)
   return ret;
  imx_pgc_put_clocks(&imx_gpc_domains[GPC_PGC_DOMAIN_PU]);

  ret = pm_genpd_remove(&imx_gpc_domains[GPC_PGC_DOMAIN_ARM].base);
  if (ret)
   return ret;
 }

 return 0;
}
