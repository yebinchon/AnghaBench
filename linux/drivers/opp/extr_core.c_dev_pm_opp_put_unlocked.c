
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_pm_opp {int kref; } ;


 int _opp_kref_release_unlocked ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void dev_pm_opp_put_unlocked(struct dev_pm_opp *opp)
{
 kref_put(&opp->kref, _opp_kref_release_unlocked);
}
