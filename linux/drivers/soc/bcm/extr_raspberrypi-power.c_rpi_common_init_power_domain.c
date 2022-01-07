
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__** domains; } ;
struct rpi_power_domains {TYPE_1__ xlate; int fw; struct rpi_power_domain* domains; } ;
struct TYPE_4__ {char const* name; int power_off; int power_on; } ;
struct rpi_power_domain {TYPE_2__ base; int fw; } ;


 int pm_genpd_init (TYPE_2__*,int *,int) ;
 int rpi_domain_off ;
 int rpi_domain_on ;

__attribute__((used)) static void rpi_common_init_power_domain(struct rpi_power_domains *rpi_domains,
      int xlate_index, const char *name)
{
 struct rpi_power_domain *dom = &rpi_domains->domains[xlate_index];

 dom->fw = rpi_domains->fw;

 dom->base.name = name;
 dom->base.power_on = rpi_domain_on;
 dom->base.power_off = rpi_domain_off;
 pm_genpd_init(&dom->base, ((void*)0), 1);

 rpi_domains->xlate.domains[xlate_index] = &dom->base;
}
