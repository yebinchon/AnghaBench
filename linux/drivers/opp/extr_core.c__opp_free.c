
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_pm_opp {int dummy; } ;


 int kfree (struct dev_pm_opp*) ;

void _opp_free(struct dev_pm_opp *opp)
{
 kfree(opp);
}
