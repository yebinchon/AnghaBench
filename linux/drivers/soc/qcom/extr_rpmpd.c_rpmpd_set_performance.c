
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmpd {unsigned int max_state; unsigned int corner; scalar_t__ key; int enabled; } ;
struct generic_pm_domain {int dummy; } ;


 scalar_t__ KEY_FLOOR_CORNER ;
 scalar_t__ KEY_FLOOR_LEVEL ;
 struct rpmpd* domain_to_rpmpd (struct generic_pm_domain*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpmpd_aggregate_corner (struct rpmpd*) ;
 int rpmpd_lock ;

__attribute__((used)) static int rpmpd_set_performance(struct generic_pm_domain *domain,
     unsigned int state)
{
 int ret = 0;
 struct rpmpd *pd = domain_to_rpmpd(domain);

 if (state > pd->max_state)
  state = pd->max_state;

 mutex_lock(&rpmpd_lock);

 pd->corner = state;


 if (!pd->enabled && pd->key != KEY_FLOOR_CORNER &&
     pd->key != KEY_FLOOR_LEVEL)
  goto out;

 ret = rpmpd_aggregate_corner(pd);

out:
 mutex_unlock(&rpmpd_lock);

 return ret;
}
