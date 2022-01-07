
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genpd_onecell_data {int num_domains; int * domains; } ;
struct qmp {struct device* dev; struct genpd_onecell_data pd_data; } ;
struct device {int of_node; } ;


 int of_genpd_del_provider (int ) ;
 int pm_genpd_remove (int ) ;

__attribute__((used)) static void qmp_pd_remove(struct qmp *qmp)
{
 struct genpd_onecell_data *data = &qmp->pd_data;
 struct device *dev = qmp->dev;
 int i;

 of_genpd_del_provider(dev->of_node);

 for (i = 0; i < data->num_domains; i++)
  pm_genpd_remove(data->domains[i]);
}
