
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rapl_package {int power_unit; int energy_unit; } ;
struct rapl_domain {int domain_energy_unit; struct rapl_package* rp; } ;
typedef enum unit_type { ____Placeholder_unit_type } unit_type ;
struct TYPE_2__ {int (* compute_time_window ) (struct rapl_package*,int,int) ;} ;




 int ENERGY_UNIT_SCALE ;


 int div64_u64 (int,int) ;
 TYPE_1__* rapl_defaults ;
 int stub1 (struct rapl_package*,int,int) ;

__attribute__((used)) static u64 rapl_unit_xlate(struct rapl_domain *rd, enum unit_type type,
      u64 value, int to_raw)
{
 u64 units = 1;
 struct rapl_package *rp = rd->rp;
 u64 scale = 1;

 switch (type) {
 case 129:
  units = rp->power_unit;
  break;
 case 130:
  scale = ENERGY_UNIT_SCALE;

  if (rd->domain_energy_unit)
   units = rd->domain_energy_unit;
  else
   units = rp->energy_unit;
  break;
 case 128:
  return rapl_defaults->compute_time_window(rp, value, to_raw);
 case 131:
 default:
  return value;
 };

 if (to_raw)
  return div64_u64(value, units) * scale;

 value *= units;

 return div64_u64(value, scale);
}
