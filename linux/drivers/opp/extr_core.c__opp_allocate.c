
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {scalar_t__ regulator_count; } ;
struct dev_pm_opp_supply {int dummy; } ;
struct dev_pm_opp {int node; struct dev_pm_opp_supply* supplies; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct dev_pm_opp* kzalloc (int,int ) ;

struct dev_pm_opp *_opp_allocate(struct opp_table *table)
{
 struct dev_pm_opp *opp;
 int count, supply_size;


 count = table->regulator_count > 0 ? table->regulator_count : 1;
 supply_size = sizeof(*opp->supplies) * count;


 opp = kzalloc(sizeof(*opp) + supply_size, GFP_KERNEL);
 if (!opp)
  return ((void*)0);


 opp->supplies = (struct dev_pm_opp_supply *)(opp + 1);
 INIT_LIST_HEAD(&opp->node);

 return opp;
}
