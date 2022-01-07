
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int genpd_virt_dev_lock; } ;


 int _opp_detach_genpd (struct opp_table*) ;
 int dev_pm_opp_put_opp_table (struct opp_table*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void dev_pm_opp_detach_genpd(struct opp_table *opp_table)
{




 mutex_lock(&opp_table->genpd_virt_dev_lock);
 _opp_detach_genpd(opp_table);
 mutex_unlock(&opp_table->genpd_virt_dev_lock);

 dev_pm_opp_put_opp_table(opp_table);
}
