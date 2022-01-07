
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct imx_pgc_domain* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct imx_pgc_domain {int genpd; TYPE_2__* dev; } ;
struct TYPE_4__ {int of_node; } ;


 int imx_pgc_put_clocks (struct imx_pgc_domain*) ;
 int of_genpd_del_provider (int ) ;
 int pm_genpd_remove (int *) ;

__attribute__((used)) static int imx_pgc_domain_remove(struct platform_device *pdev)
{
 struct imx_pgc_domain *domain = pdev->dev.platform_data;

 of_genpd_del_provider(domain->dev->of_node);
 pm_genpd_remove(&domain->genpd);
 imx_pgc_put_clocks(domain);

 return 0;
}
