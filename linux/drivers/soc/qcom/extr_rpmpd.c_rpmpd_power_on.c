
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmpd {int enabled; scalar_t__ corner; } ;
struct generic_pm_domain {int dummy; } ;


 struct rpmpd* domain_to_rpmpd (struct generic_pm_domain*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpmpd_aggregate_corner (struct rpmpd*) ;
 int rpmpd_lock ;
 int rpmpd_send_enable (struct rpmpd*,int) ;

__attribute__((used)) static int rpmpd_power_on(struct generic_pm_domain *domain)
{
 int ret;
 struct rpmpd *pd = domain_to_rpmpd(domain);

 mutex_lock(&rpmpd_lock);

 ret = rpmpd_send_enable(pd, 1);
 if (ret)
  goto out;

 pd->enabled = 1;

 if (pd->corner)
  ret = rpmpd_aggregate_corner(pd);

out:
 mutex_unlock(&rpmpd_lock);

 return ret;
}
