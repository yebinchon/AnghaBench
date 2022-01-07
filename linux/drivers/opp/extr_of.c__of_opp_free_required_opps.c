
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int required_opp_count; } ;
struct dev_pm_opp {struct dev_pm_opp** required_opps; } ;


 int dev_pm_opp_put (struct dev_pm_opp*) ;
 int kfree (struct dev_pm_opp**) ;

void _of_opp_free_required_opps(struct opp_table *opp_table,
    struct dev_pm_opp *opp)
{
 struct dev_pm_opp **required_opps = opp->required_opps;
 int i;

 if (!required_opps)
  return;

 for (i = 0; i < opp_table->required_opp_count; i++) {
  if (!required_opps[i])
   break;


  dev_pm_opp_put(required_opps[i]);
 }

 kfree(required_opps);
 opp->required_opps = ((void*)0);
}
