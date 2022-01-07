
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpi_power_domains {struct rpi_power_domain* domains; } ;
struct rpi_power_domain {int old_interface; int domain; } ;


 int rpi_common_init_power_domain (struct rpi_power_domains*,int,char const*) ;

__attribute__((used)) static void rpi_init_old_power_domain(struct rpi_power_domains *rpi_domains,
          int xlate_index, int domain,
          const char *name)
{
 struct rpi_power_domain *dom = &rpi_domains->domains[xlate_index];

 dom->old_interface = 1;
 dom->domain = domain;

 rpi_common_init_power_domain(rpi_domains, xlate_index, name);
}
