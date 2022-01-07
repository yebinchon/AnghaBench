
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmhpd {int level_count; unsigned int* level; int corner; scalar_t__ enabled; } ;
struct generic_pm_domain {int dummy; } ;


 struct rpmhpd* domain_to_rpmhpd (struct generic_pm_domain*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpmhpd_aggregate_corner (struct rpmhpd*,int) ;
 int rpmhpd_lock ;

__attribute__((used)) static int rpmhpd_set_performance_state(struct generic_pm_domain *domain,
     unsigned int level)
{
 struct rpmhpd *pd = domain_to_rpmhpd(domain);
 int ret = 0, i;

 mutex_lock(&rpmhpd_lock);

 for (i = 0; i < pd->level_count; i++)
  if (level <= pd->level[i])
   break;





 if (i == pd->level_count)
  i--;

 if (pd->enabled) {
  ret = rpmhpd_aggregate_corner(pd, i);
  if (ret)
   goto out;
 }

 pd->corner = i;
out:
 mutex_unlock(&rpmhpd_lock);

 return ret;
}
