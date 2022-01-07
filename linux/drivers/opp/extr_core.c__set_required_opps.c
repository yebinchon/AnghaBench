
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opp_table {int required_opp_count; int genpd_virt_dev_lock; struct device** genpd_virt_devs; struct opp_table** required_opp_tables; } ;
struct device {int dummy; } ;
struct dev_pm_opp {TYPE_1__** required_opps; } ;
struct TYPE_2__ {unsigned int pstate; } ;


 int dev_err (struct device*,char*,int ,unsigned int,int) ;
 int dev_name (struct device*) ;
 int dev_pm_genpd_set_performance_state (struct device*,unsigned int) ;
 scalar_t__ likely (struct dev_pm_opp*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int _set_required_opps(struct device *dev,
         struct opp_table *opp_table,
         struct dev_pm_opp *opp)
{
 struct opp_table **required_opp_tables = opp_table->required_opp_tables;
 struct device **genpd_virt_devs = opp_table->genpd_virt_devs;
 unsigned int pstate;
 int i, ret = 0;

 if (!required_opp_tables)
  return 0;


 if (!genpd_virt_devs) {
  pstate = likely(opp) ? opp->required_opps[0]->pstate : 0;
  ret = dev_pm_genpd_set_performance_state(dev, pstate);
  if (ret) {
   dev_err(dev, "Failed to set performance state of %s: %d (%d)\n",
    dev_name(dev), pstate, ret);
  }
  return ret;
 }







 mutex_lock(&opp_table->genpd_virt_dev_lock);

 for (i = 0; i < opp_table->required_opp_count; i++) {
  pstate = likely(opp) ? opp->required_opps[i]->pstate : 0;

  if (!genpd_virt_devs[i])
   continue;

  ret = dev_pm_genpd_set_performance_state(genpd_virt_devs[i], pstate);
  if (ret) {
   dev_err(dev, "Failed to set performance rate of %s: %d (%d)\n",
    dev_name(genpd_virt_devs[i]), pstate, ret);
   break;
  }
 }
 mutex_unlock(&opp_table->genpd_virt_dev_lock);

 return ret;
}
