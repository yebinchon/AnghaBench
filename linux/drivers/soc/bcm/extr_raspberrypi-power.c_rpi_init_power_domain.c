
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpi_power_domains {int has_new_interface; struct rpi_power_domain* domains; } ;
struct rpi_power_domain {int domain; } ;


 int rpi_common_init_power_domain (struct rpi_power_domains*,int,char const*) ;

__attribute__((used)) static void rpi_init_power_domain(struct rpi_power_domains *rpi_domains,
      int xlate_index, const char *name)
{
 struct rpi_power_domain *dom = &rpi_domains->domains[xlate_index];

 if (!rpi_domains->has_new_interface)
  return;


 dom->domain = xlate_index + 1;

 rpi_common_init_power_domain(rpi_domains, xlate_index, name);
}
