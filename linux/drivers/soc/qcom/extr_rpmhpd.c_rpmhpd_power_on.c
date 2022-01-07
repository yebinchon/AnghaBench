
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmhpd {int enabled; scalar_t__ corner; } ;
struct generic_pm_domain {int dummy; } ;


 struct rpmhpd* domain_to_rpmhpd (struct generic_pm_domain*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpmhpd_aggregate_corner (struct rpmhpd*,scalar_t__) ;
 int rpmhpd_lock ;

__attribute__((used)) static int rpmhpd_power_on(struct generic_pm_domain *domain)
{
 struct rpmhpd *pd = domain_to_rpmhpd(domain);
 int ret = 0;

 mutex_lock(&rpmhpd_lock);

 if (pd->corner)
  ret = rpmhpd_aggregate_corner(pd, pd->corner);

 if (!ret)
  pd->enabled = 1;

 mutex_unlock(&rpmhpd_lock);

 return ret;
}
