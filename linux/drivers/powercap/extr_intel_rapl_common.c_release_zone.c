
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rapl_package {int * domains; } ;
struct rapl_domain {scalar_t__ id; struct rapl_package* rp; } ;
struct powercap_zone {int dummy; } ;


 scalar_t__ RAPL_DOMAIN_PACKAGE ;
 int kfree (struct rapl_domain*) ;
 struct rapl_domain* power_zone_to_rapl_domain (struct powercap_zone*) ;

__attribute__((used)) static int release_zone(struct powercap_zone *power_zone)
{
 struct rapl_domain *rd = power_zone_to_rapl_domain(power_zone);
 struct rapl_package *rp = rd->rp;




 if (rd->id == RAPL_DOMAIN_PACKAGE) {
  kfree(rd);
  rp->domains = ((void*)0);
 }

 return 0;

}
