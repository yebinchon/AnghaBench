
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_pm_opp {int kref; } ;


 int kref_get (int *) ;

void dev_pm_opp_get(struct dev_pm_opp *opp)
{
 kref_get(&opp->kref);
}
