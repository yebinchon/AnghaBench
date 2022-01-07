
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dev_pm_opp {TYPE_1__* opp_table; int kref; } ;
struct TYPE_2__ {int lock; } ;


 int _opp_kref_release_locked ;
 int kref_put_mutex (int *,int ,int *) ;

void dev_pm_opp_put(struct dev_pm_opp *opp)
{
 kref_put_mutex(&opp->kref, _opp_kref_release_locked,
         &opp->opp_table->lock);
}
