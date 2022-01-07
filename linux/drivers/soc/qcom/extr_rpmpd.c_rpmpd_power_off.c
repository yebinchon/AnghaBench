
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmpd {int enabled; } ;
struct generic_pm_domain {int dummy; } ;


 struct rpmpd* domain_to_rpmpd (struct generic_pm_domain*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpmpd_lock ;
 int rpmpd_send_enable (struct rpmpd*,int) ;

__attribute__((used)) static int rpmpd_power_off(struct generic_pm_domain *domain)
{
 int ret;
 struct rpmpd *pd = domain_to_rpmpd(domain);

 mutex_lock(&rpmpd_lock);

 ret = rpmpd_send_enable(pd, 0);
 if (!ret)
  pd->enabled = 0;

 mutex_unlock(&rpmpd_lock);

 return ret;
}
