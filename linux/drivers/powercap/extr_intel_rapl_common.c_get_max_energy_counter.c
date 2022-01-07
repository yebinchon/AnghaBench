
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rapl_domain {int dummy; } ;
struct powercap_zone {int dummy; } ;


 int ENERGY_STATUS_MASK ;
 int ENERGY_UNIT ;
 struct rapl_domain* power_zone_to_rapl_domain (struct powercap_zone*) ;
 int rapl_unit_xlate (struct rapl_domain*,int ,int ,int ) ;

__attribute__((used)) static int get_max_energy_counter(struct powercap_zone *pcd_dev, u64 *energy)
{
 struct rapl_domain *rd = power_zone_to_rapl_domain(pcd_dev);

 *energy = rapl_unit_xlate(rd, ENERGY_UNIT, ENERGY_STATUS_MASK, 0);
 return 0;
}
