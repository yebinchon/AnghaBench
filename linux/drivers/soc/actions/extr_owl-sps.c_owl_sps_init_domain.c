
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int flags; int power_off; int power_on; int name; } ;
struct owl_sps_domain {TYPE_4__ genpd; TYPE_2__* info; struct owl_sps* sps; } ;
struct TYPE_7__ {TYPE_4__** domains; } ;
struct owl_sps {TYPE_3__ genpd_data; TYPE_1__* info; int dev; } ;
struct TYPE_6__ {int genpd_flags; int name; } ;
struct TYPE_5__ {TYPE_2__* domains; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct owl_sps_domain* devm_kzalloc (int ,int,int ) ;
 int owl_sps_power_off ;
 int owl_sps_power_on ;
 int pm_genpd_init (TYPE_4__*,int *,int) ;

__attribute__((used)) static int owl_sps_init_domain(struct owl_sps *sps, int index)
{
 struct owl_sps_domain *pd;

 pd = devm_kzalloc(sps->dev, sizeof(*pd), GFP_KERNEL);
 if (!pd)
  return -ENOMEM;

 pd->info = &sps->info->domains[index];
 pd->sps = sps;

 pd->genpd.name = pd->info->name;
 pd->genpd.power_on = owl_sps_power_on;
 pd->genpd.power_off = owl_sps_power_off;
 pd->genpd.flags = pd->info->genpd_flags;
 pm_genpd_init(&pd->genpd, ((void*)0), 0);

 sps->genpd_data.domains[index] = &pd->genpd;

 return 0;
}
