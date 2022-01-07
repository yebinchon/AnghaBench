
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rapl_domain {TYPE_1__* rpl; } ;
struct powercap_zone {int dummy; } ;
struct TYPE_2__ {char const* name; } ;


 int contraint_to_pl (struct rapl_domain*,int) ;
 struct rapl_domain* power_zone_to_rapl_domain (struct powercap_zone*) ;

__attribute__((used)) static const char *get_constraint_name(struct powercap_zone *power_zone,
           int cid)
{
 struct rapl_domain *rd;
 int id;

 rd = power_zone_to_rapl_domain(power_zone);
 id = contraint_to_pl(rd, cid);
 if (id >= 0)
  return rd->rpl[id].name;

 return ((void*)0);
}
