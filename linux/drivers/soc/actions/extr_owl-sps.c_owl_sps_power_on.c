
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct owl_sps_domain {TYPE_2__* info; TYPE_1__* sps; } ;
struct generic_pm_domain {int dummy; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int ,char*,int ) ;
 int owl_sps_set_power (struct owl_sps_domain*,int) ;
 struct owl_sps_domain* to_owl_pd (struct generic_pm_domain*) ;

__attribute__((used)) static int owl_sps_power_on(struct generic_pm_domain *domain)
{
 struct owl_sps_domain *pd = to_owl_pd(domain);

 dev_dbg(pd->sps->dev, "%s power on", pd->info->name);

 return owl_sps_set_power(pd, 1);
}
