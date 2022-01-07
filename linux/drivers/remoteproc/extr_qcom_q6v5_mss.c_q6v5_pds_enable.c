
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6v5 {int dummy; } ;
struct device {int dummy; } ;


 int INT_MAX ;
 int dev_pm_genpd_set_performance_state (struct device*,int ) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;

__attribute__((used)) static int q6v5_pds_enable(struct q6v5 *qproc, struct device **pds,
      size_t pd_count)
{
 int ret;
 int i;

 for (i = 0; i < pd_count; i++) {
  dev_pm_genpd_set_performance_state(pds[i], INT_MAX);
  ret = pm_runtime_get_sync(pds[i]);
  if (ret < 0)
   goto unroll_pd_votes;
 }

 return 0;

unroll_pd_votes:
 for (i--; i >= 0; i--) {
  dev_pm_genpd_set_performance_state(pds[i], 0);
  pm_runtime_put(pds[i]);
 }

 return ret;
}
