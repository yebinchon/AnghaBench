
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int required_opp_count; int ** genpd_virt_devs; } ;


 int dev_pm_domain_detach (int *,int) ;
 int kfree (int **) ;

__attribute__((used)) static void _opp_detach_genpd(struct opp_table *opp_table)
{
 int index;

 for (index = 0; index < opp_table->required_opp_count; index++) {
  if (!opp_table->genpd_virt_devs[index])
   continue;

  dev_pm_domain_detach(opp_table->genpd_virt_devs[index], 0);
  opp_table->genpd_virt_devs[index] = ((void*)0);
 }

 kfree(opp_table->genpd_virt_devs);
 opp_table->genpd_virt_devs = ((void*)0);
}
